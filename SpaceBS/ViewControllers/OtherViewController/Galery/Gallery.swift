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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = nil
        collectionView.dataSource = nil
        collectionView.collectionViewLayout = UICollectionViewLayout()
        collectionView.collectionViewLayout = CuriosityCollectionLayout(colmnsNumber: 2, minColmnsNumber: 1, minCell: 1)
        Animation.showActivityIndicator()
        
        bindViewModel()
        viewModel.fetchData(query: "Galaxy")
    }
    private func bindViewModel() {
        viewModel.nasaItems
            .observe(on: MainScheduler.instance)
            .bind(to: collectionView.rx.items(cellIdentifier: "GalleryCell", cellType: GalleryCell.self)) { row, item, cell in
                if let imageUrlString = item.links.first?.href, let imageUrl = URL(string: imageUrlString) {
                    cell.imageView.kf.setImage(with: imageUrl)
                }
            }
            .disposed(by: disposeBag)

        viewModel.isLoading
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] isLoading in
                if isLoading {
                    Animation.showActivityIndicator()
                } else {
                    Animation.hideActivityIndicator()
                }
            })
            .disposed(by: disposeBag)
    }
}

extension Gallery: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
