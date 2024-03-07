//
//  Profile.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.03.2024.
//

import UIKit
import FirebaseAuth

class Profile: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = ProfileViewModel()
    let menuOptions: [[(title: String, image: String, bgColor: UIColor, iconColor: UIColor)]] =
       [
           [
            (title: "Change Password", image: "lock.fill", bgColor: UIColor(red: 1.0, green: 0.8, blue: 0.0, alpha: 1.0), iconColor: .white),
            (title: "Logout", image: "rectangle.portrait.and.arrow.right", bgColor: .red, iconColor: .white)]
       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
extension Profile: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuOptions[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        let item = menuOptions[indexPath.section][indexPath.row]
        cell.iconView.backgroundColor = item.bgColor
        cell.iconImageView.image = UIImage(systemName: item.image)
        cell.iconImageView.tintColor = item.iconColor
        cell.optionsLabel.text = item.title
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "toChangePassword", sender: nil)
        case 1:
            logOut()
        default:
            break
        }
    }
    func logOut() {
        viewModel.signOut { success in
            if success {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if let logInVC = storyboard.instantiateViewController(withIdentifier: "LogIn") as? LogIn {
                    let navigationController = UINavigationController(rootViewController: logInVC)
                    UIApplication.shared.windows.first?.rootViewController = navigationController
                    UIView.transition(with: UIApplication.shared.windows.first!,
                                      duration: 0.3,
                                      options: .transitionCrossDissolve,
                                      animations: nil,
                                      completion: nil)
                }
            } else {
                self.makeAlert(titleInput: "Error!", messageInput: "Logout failed")
            }
        }
    }
}
