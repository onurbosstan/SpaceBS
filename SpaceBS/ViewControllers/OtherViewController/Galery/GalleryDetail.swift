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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.closeAction)))
        self.popUpView.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(self.detailAction)))
    }

    
    @objc func closeAction(sender : UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func detailAction(sender : UITapGestureRecognizer) {
    
    }
}
