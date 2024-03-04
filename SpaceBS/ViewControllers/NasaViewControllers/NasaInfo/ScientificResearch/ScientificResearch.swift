//
//  ScientificResearch.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 4.03.2024.
//

import UIKit

class ScientificResearch: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ScientificResearchViewModel()
    var selectedResearch: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResearchDetail", let destinationVC = segue.destination as? ScientificResearchDetail {
            destinationVC.researchNasa = selectedResearch
        }
    }
}
extension ScientificResearch: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.scientificResearch.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScientificResearchCell", for: indexPath) as! ScientificResearchCell
        let research = viewModel.scientificResearch[indexPath.row]
        cell.researchLabel.text = research.infoName
        cell.researchImageView.image = UIImage(named: research.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedResearch = viewModel.scientificResearch[indexPath.row]
        performSegue(withIdentifier: "toResearchDetail", sender: nil)
    }
}
