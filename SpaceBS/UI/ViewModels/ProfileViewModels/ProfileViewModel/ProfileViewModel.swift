//
//  ProfileViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.03.2024.
//

import Foundation

class ProfileViewModel {
    var usersRepo = UserProcesses()
    func signOut(completion: @escaping (Bool) -> Void) {
        usersRepo.signOut { success in
        completion(success)
        }
    }
}
