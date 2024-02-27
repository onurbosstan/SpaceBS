//
//  EpicService.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 16.02.2024.
//

import Foundation
import RxSwift
import Alamofire

class EpicService {
    func getImageList() -> Observable<[ImageListModel]>
    {
        return Observable.create { observer in
    let requestUrl = "\(EpicRoutes.baseUrl)natural/images?api_key=\(EpicRoutes.apiKey)"
            AF.request(requestUrl).responseJSON { response in
    switch response.result {
    case .success(let data):
        do {
        let jsonData = try JSONSerialization.data(withJSONObject: data, options: .prettyPrinted)
        let decoder = JSONDecoder()
        let imageList = try decoder.decode([ImageListModel].self, from: jsonData)
            observer.onNext(imageList)
            observer.onCompleted()
        } catch 
        {
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
