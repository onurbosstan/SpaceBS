//
//  HumanSpaceflight.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import UIKit

class HumanSpaceflight: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = HumanSpaceflightViewModel()
    var selectedHumanPrograms: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHumanDetail", let destinationVC = segue.destination as? HumanSpaceflightDetail {
            destinationVC.humansPrograms = selectedHumanPrograms
        }
    }
}
extension HumanSpaceflight: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.humanPrograms.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HumanSpaceflightCell", for: indexPath) as! HumanSpaceflightCell
        let programs = viewModel.humanPrograms[indexPath.row]
        cell.humanProgramsImageView.image = UIImage(named: programs.image)
        cell.humanProgramsLabel.text = programs.infoName
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedHumanPrograms = viewModel.humanPrograms[indexPath.row]
        performSegue(withIdentifier: "toHumanDetail", sender: nil)
    }
}
