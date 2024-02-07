//
//  HomeViewController.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 5.02.2024.
//

import UIKit
import Kingfisher
import RxSwift
import Alamofire

class Home: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var viewModel = HomeViewModel()
    var photoList = [PhotoModel]()
    let disposeBag = DisposeBag()
    var selectedCamera: NasaCamera = .CHEMCAM
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewLayout()
        collectionView.collectionViewLayout = CollectionLayout(colmnsNumber: 2, minColmnsNumber: 1, minCell: 1)
        Animation.showActivityIndicator()
        viewModel.photoList
                .subscribe(onNext: { [weak self] photos in
                    if let selectedCamera = self?.selectedCamera {
                        self?.photoList = photos.filter { $0.camera.name == selectedCamera.rawValue }
                    } else {
                        self?.photoList = photos
                    }
                    self?.collectionView.reloadData()
                })
                .disposed(by: disposeBag)
                
                viewModel.fetchMarsPhotos(forRover: "curiosity", onEarthDate: "2024-01-01")
        Animation.hideActivityIndicator()
    }
    @IBAction func menuButton(_ sender: Any) {
        showCameraSelectionAlert()
    }
    func showCameraSelectionAlert() {
            let alertController = UIAlertController(title: "Select Camera", message: nil, preferredStyle: .actionSheet)
            for camera in NasaCamera.allCases {
                let action = UIAlertAction(title: camera.rawValue, style: .default) { [weak self] _ in
                    self?.selectedCamera = camera
                    self?.viewModel.fetchMarsPhotos(forRover: "curiosity", onEarthDate: "2024-01-01")
                }
                alertController.addAction(action)
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
        }
}
extension Home: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mars = photoList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        if let imageUrl = URL(string: mars.img_src ?? "")
        {
            cell.collectionImageView.kf.setImage(with: imageUrl)
        }
        return cell
    }
}
