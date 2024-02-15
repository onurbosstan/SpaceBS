//
//  MarsWeatherViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 12.02.2024.
//

import Foundation
import RxSwift

class MarsWeatherViewModel {
    private let marsWeatherService: MarsWeatherService
    private let disposeBag = DisposeBag()
    let airTemperatureText = BehaviorSubject<String?>(value: nil)
    let windSpeedText = BehaviorSubject<String?>(value: nil)
    let pressureText = BehaviorSubject<String?>(value: nil)
    let windDirectionText = BehaviorSubject<String?>(value: nil)
    
    init(marsWeatherService: MarsWeatherService = MarsWeatherService()) {
        self.marsWeatherService = marsWeatherService
    }
    
    func fetchWeatherData() {
        marsWeatherService.fetchWeatherData()
            .subscribe(onNext: { [weak self] weatherData in
                guard let self = self else { return }
                if let solData = weatherData.validity_checks?.sols["1219"] {
                    self.airTemperatureText.onNext("\(solData.AT.sol_hours_with_data ?? [])")
                    self.windSpeedText.onNext("\(solData.HWS.sol_hours_with_data ?? [])")
                    self.pressureText.onNext("\(solData.PRE.sol_hours_with_data ?? [])")
                    self.windDirectionText.onNext("\(solData.WD.sol_hours_with_data ?? [])")
                }
            }, onError: { error in
                print("Error fetching weather data: \(error)")
            })
            .disposed(by: disposeBag)
    }
}

