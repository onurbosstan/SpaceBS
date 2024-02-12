//
//  MarsPhotoDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.02.2024.
//

import UIKit

class CuriosityPhotoDetail: UIViewController {
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var earthDateLabel: UILabel!
    @IBOutlet weak var roverNameLabel: UILabel!
    @IBOutlet weak var cameraNameLabel: UILabel!
    @IBOutlet weak var launchDateLabel: UILabel!
    @IBOutlet weak var landingDateLabel: UILabel!
    @IBOutlet weak var roverStatusLabel: UILabel!
    var viewModel : CuriosityPhotoDetailViewModel?
    var photoModel : PhotoModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 16
        populateData()
        popUpView.clipsToBounds = true
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.closeAction)))
        self.popUpView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.detailAction)))
    }
    func populateData() 
    {
        guard let photoModel = photoModel else
        {
            fatalError("PhotoModel is nil.")
        }
        
        viewModel = CuriosityPhotoDetailViewModel(photoModel: photoModel)
        let detailData = viewModel?.populateData()
        if let imgURL = detailData?.imgURL
        {
            photoImageView.kf.setImage(with: imgURL)
        }
        earthDateLabel.text = detailData?.earthDate
        roverNameLabel.text = detailData?.roverName
        cameraNameLabel.text = detailData?.cameraName
        roverStatusLabel.text = detailData?.roverStatus
        launchDateLabel.text = detailData?.launchDate
        landingDateLabel.text = detailData?.landingDate
    }
    @objc func closeAction(sender : UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func detailAction(sender : UITapGestureRecognizer) {
    
    }
}
