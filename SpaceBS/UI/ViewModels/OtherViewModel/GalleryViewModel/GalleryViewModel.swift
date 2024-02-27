//
//  GaleryViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 26.02.2024.
//

import UIKit
import RxSwift
import Kingfisher

class GalleryViewModel {
    private let disposeBag = DisposeBag()
    private let galleryService = GaleryService.shared

    var nasaItems: PublishSubject<[NASAItem]> = PublishSubject()
    var isLoading: BehaviorSubject<Bool> = BehaviorSubject(value: false)
    
    func fetchData(query: String) {
        isLoading.onNext(true)
        galleryService.searchNASAItems(query: query)
            .subscribe(onNext: { [weak self] items in
                self?.nasaItems.onNext(items)
                self?.isLoading.onNext(false)
            }, onError: { [weak self] error in
                self?.isLoading.onNext(false)
            })
            .disposed(by: disposeBag)
    }
}
