//
//  GaleryModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 26.02.2024.
//

import Foundation

struct NASAItemsResponse: Codable {
    let collection: NASACollection
}

struct NASACollection: Codable {
    let items: [NASAItem]
}

struct NASAItem: Codable {
    let href: String
    let data: [NASAData]
    let links: [Link]
}

struct NASAData: Codable {
    let center: String
    let title: String
    let keywords: [String]
    let nasa_id: String
    let date_created: String
    let media_type: String
    let description: String
}

struct Link: Codable {
    let rel: String
    let prompt: String?
    let href: String
}

struct Metadata: Codable {
    let total_hits: Int
}
