//
//  EpicViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 16.02.2024.
//

import Foundation
import RxSwift

class EpicViewModel {
    private let epicService = EpicService()
    private let disposeBag = DisposeBag()
    
    func getImageList() -> Observable<[ImageListModel]>
    {
        return epicService.getImageList()
    }
}

