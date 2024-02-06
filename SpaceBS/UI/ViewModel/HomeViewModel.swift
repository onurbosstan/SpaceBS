//
//  HomeViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 5.02.2024.
//

import Foundation
import RxSwift

class HomeViewModel {
    var marsPhotoService = MarsPhotoService()
    var photoList = BehaviorSubject<[PhotoModel]>(value: [])
    var isLoading = BehaviorSubject<Bool>(value: false)
    let disposeBag = DisposeBag()
    
    func fetchMarsPhotos(forRover rover: String, onEarthDate earthDate: String) {
        isLoading.onNext(true)
        marsPhotoService.getMarsPhotos(forRover: rover, onEarthDate: earthDate)
            .subscribe(onNext: { [weak self] (photos: [PhotoModel]) in
                self?.photoList.onNext(photos)
                self?.isLoading.onNext(false)
            }, onError: { error in
                self.isLoading.onNext(false)
                print("Hata: \(error)")
            })
            .disposed(by: disposeBag)
    }
}
