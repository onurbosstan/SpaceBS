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

class Curiosity: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var viewModel = CuriosityViewModel()
    var photoList = [PhotoModel]()
    let disposeBag = DisposeBag()
    var selectedCamera: NasaCamera?
    var menuViewController: Menu?

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewLayout()
        collectionView.collectionViewLayout = CuriosityCollectionLayout(colmnsNumber: 2, minColmnsNumber: 1, minCell: 1)
        
        Animation.showActivityIndicator()
        viewModel.photoList
                .subscribe(onNext: { [weak self] photos in
                    if let selectedCamera = self?.selectedCamera 
                    {
                        self?.photoList = photos.filter { $0.camera.name == selectedCamera.rawValue
                        }
                    } else 
                    {
                        self?.photoList = photos
                    }
                    self?.collectionView.reloadData()
                })
                .disposed(by: disposeBag)
                
                viewModel.fetchMarsPhotos(forRover: "curiosity", onEarthDate: "2024-01-01")
        Animation.hideActivityIndicator()
    }
    @IBAction func menuButton(_ sender: Any) {
        if menuViewController == nil {
                    guard let menuVC = storyboard?.instantiateViewController(withIdentifier: "Menu") as? Menu else {
                        return
                    }
            menuVC.delegate = self
                    self.menuViewController = menuVC
                    addChild(menuVC)
                    view.addSubview(menuVC.view)
                    menuVC.didMove(toParent: self)
                }
                menuViewController?.showMenu()
    }
}

extension Curiosity: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mars = photoList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CuriosityCell", for: indexPath) as! CuriosityCell
        if let imageUrl = URL(string: mars.img_src ?? "")
        {
            cell.collectionImageView.kf.setImage(with: imageUrl)
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedPhoto = photoList[indexPath.row]
        showPhotoDetail(photo: selectedPhoto)
    }
    func showPhotoDetail(photo: PhotoModel)
    {
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MarsPhotoDetail") as! CuriosityPhotoDetail
        detailVC.photoModel = photo
        detailVC.modalPresentationStyle = .overCurrentContext
        detailVC.modalTransitionStyle = .crossDissolve
        present(detailVC, animated: true, completion: nil)
        }
}
extension Curiosity: MenuDelegate {
    func didSelectCamera(_ camera: NasaCamera) {
        selectedCamera = camera
        viewModel.fetchMarsPhotos(forRover: "curiosity", onEarthDate: "2024-01-01")
    }
}

