//
//  LogInViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.02.2024.
//

import Foundation

class LogInViewModel {
    var userData = UserProcesses()
    func signIn(email:String, password: String, completion: @escaping (Error?) -> Void) {
        userData.signIn(email: email, password: password) { error in
            if let error = error {
                completion(error)
            } else {
                completion(nil)
            }
        }
    }
}
