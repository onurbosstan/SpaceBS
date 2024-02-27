//
//  Galery.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 26.02.2024.
//

import UIKit
import RxSwift
import Kingfisher

class Gallery: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private let viewModel = GalleryViewModel()
    private let disposeBag = DisposeBag()
    var photoModel = [NASAItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewLayout()
        collectionView.collectionViewLayout = CuriosityCollectionLayout(colmnsNumber: 2, minColmnsNumber: 1, minCell: 1)
        Animation.showActivityIndicator()
        
        bindViewModel()
        viewModel.fetchData(query: "Galaxy")
    }
    private func bindViewModel() {
            viewModel.nasaItems
                .observe(on: MainScheduler.instance)
                .subscribe(onNext: { [weak self] items in
                    self?.photoModel = items
                    self?.collectionView.reloadData()
                    Animation.hideActivityIndicator()
                })
                .disposed(by: disposeBag)
    }
}

extension Gallery: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoModel.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCell", for: indexPath) as? GalleryCell else {
            return UICollectionViewCell()
        }
        let photoItem = photoModel[indexPath.item]
        if let imageUrlString = photoItem.links.first?.href, let imageUrl = URL(string: imageUrlString) {
            cell.imageView.kf.setImage(with: imageUrl)
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedPhoto = photoModel[indexPath.row]
        showGalleryDetail(with: selectedPhoto)
    }
    func showGalleryDetail(with item: NASAItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let galleryDetailVC = storyboard.instantiateViewController(withIdentifier: "GalleryDetail") as! GalleryDetail
        galleryDetailVC.modalPresentationStyle = .overFullScreen
        galleryDetailVC.modalTransitionStyle = .crossDissolve
        galleryDetailVC.selectedItem = item
        present(galleryDetailVC, animated: true, completion: nil)
    }
}
