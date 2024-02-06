//
//  MarsPhotoService.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 6.02.2024.
//

import Foundation
import Alamofire
import RxSwift

class MarsPhotoService {
    static let shared = MarsPhotoService()

    func getMarsPhotos(forRover rover: String, onEarthDate earthDate: String) -> Observable<[PhotoModel]> {
        return Observable.create { observer in
            guard let baseUrl = URL(string: Routes.baseUrl),
                  let url = URL(string: rover, relativeTo: baseUrl)?.appendingPathComponent("photos") else {
                observer.onError(NSError(domain: "RestClient", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
                return Disposables.create()
            }
            let params: [String: Any] = [
                "earth_date": earthDate,
                "api_key": Routes.apiKey
            ]
            AF.request(url, parameters: params).responseJSON { response in
                switch response.result {
                case .success(let value):
                    guard let json = value as? [String: Any],
                          let photosArray = json["photos"] as? [[String: Any]] else {
                        observer.onError(NSError(domain: "RestClient", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid response format"]))
                        return
                    }
                    do {
                        let data = try JSONSerialization.data(withJSONObject: photosArray, options: [])
                        let photos = try JSONDecoder().decode([PhotoModel].self, from: data)
                        observer.onNext(photos)
                        observer.onCompleted()
                    } catch {
                        observer.onError(error)
                    }
                case .failure(let error):
                    observer.onError(error)
                }
            }
            return Disposables.create()
        }
    }
}
