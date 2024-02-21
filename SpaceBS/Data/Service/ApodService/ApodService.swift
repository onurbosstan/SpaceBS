//
//  ApodService.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 19.02.2024.
//

import Foundation
import Alamofire
import RxSwift

class ApodService {
    func getApodData() -> Observable<ApodModel> {
        return Observable.create { observer in
            let requestUrl = "\(ApodRoutes.baseUrl)apod?api_key=\(ApodRoutes.apiKey)"
            AF.request(requestUrl).responseData { response in
                switch response.result {
                case .success(let data):
                    do {
                        let apodData = try JSONDecoder().decode(ApodModel.self, from: data)
                        observer.onNext(apodData)
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




