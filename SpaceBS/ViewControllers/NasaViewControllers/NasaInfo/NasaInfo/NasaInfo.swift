//
//  NasaInfo.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import UIKit

class NasaInfo: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoCollectionView: UICollectionView!
    @IBOutlet weak var scrollTitleLabel: UILabel!
    var viewModel = NasaInfoViewModel()
    let images = ["humansps", "spacex", "nafa"]
    let titles = ["Human Spaceflight", "Modern Spaceflight", "Facilities"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollTitleLabel.text = viewModel.establishmentLabel
        infoCollectionView.dataSource = self
        infoCollectionView.delegate = self
        
        infoCollectionView.collectionViewLayout = NasaInfoCollectionLayout(colmnsNumber: images.count, minColmnsNumber: 1, minCell: 1)
        if let flowLayout = infoCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: view.frame.width, height: scrollTitleLabel.frame.origin.y + scrollTitleLabel.frame.height)
    }
}
extension NasaInfo: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NasaInfoCell", for: indexPath) as! NasaInfoCell
        cell.imageView.image = UIImage(named: images[indexPath.item])
        cell.titleLabel.text = titles[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            switch indexPath.item {
            case 0:
                performSegue(withIdentifier: "toHuman", sender: nil)
            case 1:
                performSegue(withIdentifier: "toModern", sender: nil)
            case 2:
                performSegue(withIdentifier: "toFacilities", sender: nil)
            case 3:
                performSegue(withIdentifier: "", sender: nil)
            default:
                break
            }
        }
}
