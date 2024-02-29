//
//  ModernSpaceflight.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.03.2024.
//

import UIKit

class ModernSpaceflight: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ModernSpaceflightViewModel()
    var selectedModernPrograms: NasaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toModernDetail", let destinationVC = segue.destination as? ModernSpaceflightDetail {
            destinationVC.modernPrograms = selectedModernPrograms
        }
    }
}
extension ModernSpaceflight: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.modernPrograms.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ModernSpaceflightCell", for: indexPath) as! ModernSpaceflightCell
        let modernProg = viewModel.modernPrograms[indexPath.row]
        cell.modernProgramsLabel.text = modernProg.infoName
        cell.modernProgramsImageView.image = UIImage(named: modernProg.image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedModernPrograms = viewModel.modernPrograms[indexPath.row]
        performSegue(withIdentifier: "toModernDetail", sender: nil)
    }
}
