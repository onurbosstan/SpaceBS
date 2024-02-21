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
    let mediaType: String
    let serviceVersion: String
    let title: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case date, explanation, hdurl
        case mediaType = "media_type"
        case serviceVersion = "service_version"
        case title, url
    }
}

