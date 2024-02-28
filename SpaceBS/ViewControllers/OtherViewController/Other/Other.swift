//
//  Other.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 25.02.2024.
//

import UIKit

class Other: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = ["nasalogo", "nasateleskop", "obser", "nasactive"]
    let titles = ["Nasa TV", "Gallery", "Observations", "Active Programs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.collectionViewLayout = OtherCollectionLayout(colmnsNumber: images.count, minColmnsNumber: 1, minCell: 1)
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
        }
        //collectionView.isScrollEnabled = true
    }
}
extension Other: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
        }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OtherCell", for: indexPath) as! OtherCell
        cell.imageView.image = UIImage(named: images[indexPath.item])
        cell.titleLabel.text = titles[indexPath.item]
                        
        return cell
        }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            switch indexPath.item {
            case 0:
                performSegue(withIdentifier: "toNasaTV", sender: nil)
            case 1:
                performSegue(withIdentifier: "toGallery", sender: nil)
            case 2:
                performSegue(withIdentifier: "toObservations", sender: nil)
            default:
                break
            }
        }
}
