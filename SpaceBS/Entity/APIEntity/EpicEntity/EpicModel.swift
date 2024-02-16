//
//  EpicModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 16.02.2024.
//

import Foundation

struct ImageListModel: Codable {
    let date: String
    let coords: CoordinatesModel
    let attitude_quaternions: AttitudeModel
}

struct CoordinatesModel: Codable {
    let centroid_coordinates: CentroidCoordinatesModel
    let dscovr_j2000_position: PositionModel
    let lunar_j2000_position: PositionModel
    let sun_j2000_position: PositionModel
}

struct CentroidCoordinatesModel: Codable {
    let lat: Double
    let lon: Double
}

struct PositionModel: Codable {
    let x: Double
    let y: Double
    let z: Double
}

struct AttitudeModel: Codable {
    let q0: Double
    let q1: Double
    let q2: Double
    let q3: Double
}
