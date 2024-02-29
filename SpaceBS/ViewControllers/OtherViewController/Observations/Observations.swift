//
//  Observations.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 28.02.2024.
//

import UIKit

class Observations: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ObservationsViewModel()
    var selectedObservation: Observation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toObserDetail", let destinationVC = segue.destination as? ObservationsDetail {
            destinationVC.observation = selectedObservation
        }
    }
}
extension Observations: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.observations.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ObservationsCell", for: indexPath) as! ObservationsCell
        let observation = viewModel.observations[indexPath.row]
        cell.roverNameLabel.text = observation.roverName
        cell.roverImageView.image = UIImage(named: observation.imageName)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedObservation = viewModel.observations[indexPath.row]
        performSegue(withIdentifier: "toObserDetail", sender: nil)
       }
}
