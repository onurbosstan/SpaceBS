//
//  Epic.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 16.02.2024.
//

import UIKit
import RxSwift
import RxCocoa

class Epic: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var epicImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    private let viewModel = EpicViewModel()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 4
        showLoadingAnimation()
        bindViewModel()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTap))
        epicImageView.addGestureRecognizer(tapGesture)
        epicImageView.isUserInteractionEnabled = true
    }
    @objc func imageTap() 
    {
        self.performSegue(withIdentifier: "toEpic", sender: nil)
    }
    func showLoadingAnimation()
    {
        Animation.showActivityIndicator()
    }
    func bindViewModel()
    {
        viewModel.getImageList()
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] imageList in
        guard let self = self else { return }
            if let firstImage = imageList.first 
                {
                if let imageUrl = URL(string: "https://api.nasa.gov/EPIC/archive/natural/2019/05/30/png/epic_1b_20190530011359.png?api_key=DEMO_KEY") 
                {
                        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
                            if let data = data, let image = UIImage(data: data) 
                            {
                                DispatchQueue.main.async 
                                {
                                    self.imageView.image = image
                                    Animation.hideActivityIndicator()
                                }
                            }
                        }.resume()
                    }
                    self.xLabel.text = "X➡️: \(firstImage.coords.dscovr_j2000_position.x)"
                    self.yLabel.text = "Y⬆️: \(firstImage.coords.dscovr_j2000_position.y)"
                    self.zLabel.text = "Z🔁: \(firstImage.coords.dscovr_j2000_position.z)"
                    self.dateLabel.text = "📆Date: \(firstImage.date)"
                }
            }, onError: 
                    { error in
                print("Error: \(error.localizedDescription)")
            })
            .disposed(by: disposeBag)
        }
    
    @IBAction func menuButton(_ sender: Any) {
        
    }
    @IBAction func nasaButton(_ sender: Any) {
        if let url = URL(string: "https://www.nasa.gov") {
            UIApplication.shared.open(url)
        }
    }
}
