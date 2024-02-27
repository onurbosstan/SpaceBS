//
//  ApodDetailViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 19.02.2024.
//

import Foundation
import RxSwift

class ApodDetailViewModel {
    private let disposeBag = DisposeBag()
    private let _apod = PublishSubject<ApodModel>()
    
    var apod: Observable<ApodModel> {
        return _apod.asObservable()
    }
    
    func fetchApod() {
        ApodService.shared.fetchApod()
            .subscribe(onNext: { [weak self] apod in
                self?._apod.onNext(apod)
            }, onError: { error in
                print("Apod fetch error: \(error.localizedDescription)")
            })
            .disposed(by: disposeBag)
    }
}
