//
//  RegisterViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 2.02.2024.
//

import Foundation
    
class RegisterViewModel {
    var userData = UserProcesses()
    func signUp(email: String, password: String, completion: @escaping (Bool) -> Void)
    {
        userData.signUp(email: email, password: password) { result in
            completion(result)
        }
    }
}
