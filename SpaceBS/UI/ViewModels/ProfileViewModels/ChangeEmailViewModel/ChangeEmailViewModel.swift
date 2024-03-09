//
//  ChangeEmailViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 9.03.2024.
//

import Foundation
import FirebaseAuth

class ChangeEmailViewModel {
    var userPro = UserProcesses()
    
    func changeEmail(newEmail: String, completion: @escaping (Error?) -> Void) {
        userPro.changeEmail(newEmail: newEmail) { error in
            completion(error)
        }
    }
}
