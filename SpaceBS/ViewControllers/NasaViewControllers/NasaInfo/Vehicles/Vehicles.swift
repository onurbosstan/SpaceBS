//
//  Vehicles.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class Vehicles: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = VehiclesViewModel()
    var selectedVehicles: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVehiclesDetail", let destinationVC = segue.destination as? VehiclesDetail {
            destinationVC.vehiclesDetail = selectedVehicles
        }
    }
}
extension Vehicles: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.vehicles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehiclesCell", for: indexPath) as! VehiclesCell
        let vehicles = viewModel.vehicles[indexPath.row]
        cell.vehiclesLabel.text = vehicles.infoName
        cell.vehiclesImageView.image = UIImage(named: vehicles.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedVehicles = viewModel.vehicles[indexPath.row]
        performSegue(withIdentifier: "toVehiclesDetail", sender: nil)
    }
}
