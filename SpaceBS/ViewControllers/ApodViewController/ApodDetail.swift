//
//  ApodDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 19.02.2024.
//

import UIKit
import Kingfisher
import RxSwift
import RxCocoa

class ApodDetail: UIViewController {
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    var viewModel = ApodDetailViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    private func setupViewModel() {
        popUpView.layer.cornerRadius = 16
        popUpView.clipsToBounds = true
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.closeAction)))
        self.popUpView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.detailAction)))
        fetchData()
    }
    private func fetchData() {
        viewModel.fetchApod()
        viewModel.apod
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] apod in
                self?.updateUI(with: apod)
            })
            .disposed(by: disposeBag)
    }
    private func updateUI(with apod: ApodModel) {
        if let url = URL(string: apod.hdurl) {
            imageView.kf.setImage(with: url)
        }
        dateLabel.text = apod.date
        titleLabel.text = apod.title
        explanationLabel.text = "💬\(apod.explanation)"
        explanationLabel.sizeToFit()
        scrollView.bottomAnchor.constraint(equalTo: explanationLabel.bottomAnchor).isActive = true
    }
    @objc func closeAction(sender : UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func detailAction(sender : UITapGestureRecognizer) {
    
    }
}
