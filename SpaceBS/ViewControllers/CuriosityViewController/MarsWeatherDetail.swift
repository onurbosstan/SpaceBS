//
//  MarsWeatherDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 12.02.2024.
//

import UIKit
import RxSwift


class MarsWeatherDetail: UIViewController {
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var airTemperatureLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var pressureSymbolLabel: UILabel!
    @IBOutlet weak var windDirectionSymbol: UILabel!
    private let viewModel = MarsWeatherViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.closeAction)))
        popUpView.clipsToBounds = true
        
        bindViewModel()
        viewModel.fetchWeatherData()
    }
    private func bindViewModel() {
        viewModel.airTemperatureText
            .subscribe(onNext: { [weak self] temperature in
                self?.airTemperatureLabel.text = temperature
            })
            .disposed(by: disposeBag)
        
        viewModel.windSpeedText
            .subscribe(onNext: { [weak self] speed in
                self?.windSpeedLabel.text = speed
            })
            .disposed(by: disposeBag)
        
        viewModel.pressureText
            .subscribe(onNext: { [weak self] pressure in
                self?.pressureSymbolLabel.text = pressure
            })
            .disposed(by: disposeBag)
        
        viewModel.windDirectionText
            .subscribe(onNext: { [weak self] direction in
                self?.windDirectionSymbol.text = direction
            })
            .disposed(by: disposeBag)
    }
    @objc func closeAction(sender : UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
