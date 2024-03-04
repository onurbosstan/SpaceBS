//
//  Facilities.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class Facilities: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = FacilitiesViewModel()
    var selectedFacilities: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFacilitiesDetail", let destinationVC = segue.destination as? FacilitiesDetail {
            destinationVC.facilitiesNasas = selectedFacilities
        }
    }
}
extension Facilities: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.facilities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FacilitiesCell", for: indexPath) as! FacilitiesCell
        let facilitiesNasa = viewModel.facilities[indexPath.row]
        cell.facilitiesLabel.text = facilitiesNasa.infoName
        cell.facilitiesImageView.image = UIImage(named: facilitiesNasa.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFacilities = viewModel.facilities[indexPath.row]
        performSegue(withIdentifier: "toFacilitiesDetail", sender: nil)
    }
}
