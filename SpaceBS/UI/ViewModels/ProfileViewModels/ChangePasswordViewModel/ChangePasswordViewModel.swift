//
//  ChangePasswordViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.03.2024.
//

import Foundation

class ChangePasswordViewModel {
    var usersPro = UserProcesses()
    func changePassword(newPassword: String, completion: @escaping (Error?) -> Void) {
            usersPro.changePassword(newPassword: newPassword) { error in
                completion(error)
            }
        }
    func verifyCurrentPassword(currentPassword: String, completion: @escaping (Bool) -> Void) {
        let isPasswordCorrect = true
        completion(isPasswordCorrect)
    }
    
}
