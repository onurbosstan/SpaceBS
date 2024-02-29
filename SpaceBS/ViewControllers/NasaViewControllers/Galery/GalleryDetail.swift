//
//  GalleryDetail.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 26.02.2024.
//

import UIKit

class GalleryDetail: UIViewController {
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    var selectedItem: NASAItem?
    var viewModel: GalleryDetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.closeAction)))
        self.popUpView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.detailAction)))
        
        guard let selectedItem = selectedItem else {
             return
         }
                viewModel = GalleryDetailViewModel(selectedItem: selectedItem)
                populateDatas()
    }
    
    func populateDatas() {
            guard let viewModel = viewModel, let selectedItem = viewModel.selectedItem else {
                return
            }
            
            titleLabel.text = selectedItem.data.first?.title ?? ""
            if let imageUrlString = selectedItem.links.first?.href, let imageUrl = URL(string: imageUrlString) {
                imageView.kf.setImage(with: imageUrl)
            }
        }
    @objc func closeAction(sender : UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func detailAction(sender : UITapGestureRecognizer) {
    
    }
}
