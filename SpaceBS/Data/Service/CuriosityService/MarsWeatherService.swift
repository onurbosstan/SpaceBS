//
//  MarsWeatherService.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 13.02.2024.
//

import Foundation
import Alamofire
import RxSwift

class MarsWeatherService {
    func fetchWeatherData() -> Observable<MarsWeatherModel> {
        let parameters: [String: Any] = [
            "api_key": MarsWeatherRoutes.apiKey,
            "feedtype": "json",
            "ver": 1.0
        ]
        
        return Observable.create { observer in
            AF.request(MarsWeatherRoutes.baseUrl, parameters: parameters)
                .validate()
                .responseDecodable(of: MarsWeatherModel.self) { response in
                    switch response.result {
                    case .success(let weatherData):
                        observer.onNext(weatherData)
                        observer.onCompleted()
                    case .failure(let error):
                        observer.onError(error)
                    }
                }
            return Disposables.create()
        }
    }
}

