//
//  Menu.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 9.02.2024.
//

import UIKit

protocol MenuDelegate: AnyObject {
    func didSelectCamera(_ camera: NasaCamera)
}

class Menu: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    weak var delegate: MenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let screenWidth = UIScreen.main.bounds.width
        self.view.frame = CGRect(x: screenWidth, y: 0, width: screenWidth / 2, height: UIScreen.main.bounds.height)
            
    }
    func showMenu() {
            UIView.animate(withDuration: 0.5) {
                self.view.frame.origin.x = UIScreen.main.bounds.width / 2
            }
        }

        func hideMenu() {
            UIView.animate(withDuration: 0.5) {
                self.view.frame.origin.x = UIScreen.main.bounds.width
            }
        }
    
    @IBAction func closeButton(_ sender: Any) {
    hideMenu()
    }
    
}
extension Menu: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return NasaCamera.allCases.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
            let camera = NasaCamera.allCases[indexPath.row]
            cell.cameraName.text = "🎥\(camera.rawValue)"
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCamera = NasaCamera.allCases[indexPath.row]
                delegate?.didSelectCamera(selectedCamera)
                hideMenu()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
