//
//  ForgotPasswordViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 1.02.2024.
//

import Foundation

class ForgotPasswordViewModel {
    var userData = UserProcesses()
    func forgotPassword(email:String, completion: @escaping (Error?) -> Void) 
    {
        userData.forgotPassword(email: email) { error in
            if let error = error 
            {
                completion(error)
            } else 
            {
                completion(nil)
            }
        }
    }
}
