//
//  Apod.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 18.02.2024.
//

import UIKit

class Apod: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let apodData = [
        ("Astronomy Picture of the Day", "A different astronomy and space science related image is featured each day, along with a brief explanation."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()


        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension Apod: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apodData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ApodCell", for: indexPath) as! ApodCell
              let (apodTitle, apodDescription) = apodData[indexPath.row]
              
              cell.apodLabel.text = apodTitle
              cell.titleLabel.text = apodDescription
              
              return cell
    }
}
