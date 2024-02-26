//
//  GaleryService.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 26.02.2024.
//

import Foundation
import RxSwift
import Alamofire

class GaleryService {
    
    static let shared = GaleryService()
    private init() {}
    
    func searchNASAItems(query: String) -> Observable<[NASAItem]> {
        return Observable.create { observer in
            let parameters: [String: Any] = ["q": query]
            let headers: HTTPHeaders = ["api_key": GalleryRoutes.apiKey]
            
            AF.request(GalleryRoutes.baseURL, parameters: parameters, headers: headers).responseDecodable(of: NASAItemsResponse.self) { response in
                switch response.result {
                case .success(let nasaItemsResponse):
                    observer.onNext(nasaItemsResponse.collection.items)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            
            return Disposables.create()
        }
    }
}
