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
    static let shared = ApodService()
    
    func fetchApod() -> Observable<ApodModel> {
        return Observable.create { observer in
            let url = "\(ApodRoutes.baseUrl)apod?api_key=\(ApodRoutes.apiKey)"
            AF.request(url).responseDecodable(of: ApodModel.self) { response in
                switch response.result {
                case .success(let apod):
                    observer.onNext(apod)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            return Disposables.create()
        }
    }
}

