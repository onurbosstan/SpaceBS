//
//  Apod.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 18.02.2024.
//

import UIKit
import RxSwift

class Apod: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!
    var viewModel: ApodViewModel!
    var imageViews = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isDirectionalLockEnabled = true
        scrollView.layer.cornerRadius = 8
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = true
        tableView.isUserInteractionEnabled = true
        
        let viewModel = ApodViewModel()
        self.viewModel = viewModel
        viewModel.addImagesToScrollView(scrollView: scrollView)
    }
}

extension Apod: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ApodCell", for: indexPath) as! ApodCell
        cell.apodLabel.text = viewModel.apodText
        cell.isUserInteractionEnabled = false
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 800
    }
}

extension Apod: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        scrollView.setContentOffset(CGPoint(x: pageIndex * scrollView.frame.size.width, y: 0), animated: true)
    }
}


