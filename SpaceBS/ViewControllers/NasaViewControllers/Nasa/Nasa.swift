//
//  Other.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 25.02.2024.
//

import UIKit

class Nasa: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nasaLabel: UILabel!
    var viewModel = NasaViewModel()
    
    let images = ["nasalogo", "nasateleskop", "obser", "nasactive"]
    let titles = ["Nasa", "Gallery", "Observations", "Active Programs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nasaLabel.text = viewModel.nasaLabelText
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.collectionViewLayout = NasaCollectionLayout(colmnsNumber: images.count, minColmnsNumber: 1, minCell: 1)
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
    }
}
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: view.frame.width, height: nasaLabel.frame.origin.y + nasaLabel.frame.height)
    }
}
extension Nasa: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OtherCell", for: indexPath) as! NasaCell
        cell.imageView.image = UIImage(named: images[indexPath.item])
        cell.titleLabel.text = titles[indexPath.item]
                        
        return cell
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            switch indexPath.item {
            case 0:
                performSegue(withIdentifier: "toNasa", sender: nil)
            case 1:
                performSegue(withIdentifier: "toGallery", sender: nil)
            case 2:
                performSegue(withIdentifier: "toObservations", sender: nil)
            case 3:
                performSegue(withIdentifier: "toPrograms", sender: nil)
            default:
                break
            }
        }
}
