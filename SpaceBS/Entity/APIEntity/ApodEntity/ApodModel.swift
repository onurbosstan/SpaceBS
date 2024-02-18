//
//  ApodModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 18.02.2024.
//

import Foundation

struct ApodModel: Codable {
    let date: String
    let explanation: String
    let hdurl: String
    let media_type: String
    let service_version : String
    let title: String
    let url: String
}
