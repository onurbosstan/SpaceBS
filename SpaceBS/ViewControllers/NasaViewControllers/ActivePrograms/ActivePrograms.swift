//
//  ActivePrograms.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 29.02.2024.
//

import UIKit

class ActivePrograms: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ActiveProgramsViewModel()
    var selectedPrograms: ActiveProgramsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProgramsDetail", let destinationVC = segue.destination as? ActiveProgramsDetail {
            destinationVC.activePrograms = selectedPrograms
        }
    }
}
extension ActivePrograms: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.programs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActiveProgramsCell", for: indexPath) as! ActiveProgramsCell
        let programs = viewModel.programs[indexPath.row]
        cell.programsNameLabel.text = programs.programsName
        cell.programsImageView.image = UIImage(named: programs.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPrograms = viewModel.programs[indexPath.row]
        performSegue(withIdentifier: "toProgramsDetail", sender: nil)
    }
}
