//
//  MarsWeatherData.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 12.02.2024.
//

import Foundation

struct MarsWeatherModel: Codable {
    let sol_keys: [String]
    let validity_checks: ValidityChecks?
}

struct ValidityChecks: Codable {
    let sol_hours_required: Int
    let sols_checked: [String]
    let sols: [String: SolData]
}

struct SolData: Codable {
    let AT: SensorData
    let HWS: SensorData
    let PRE: SensorData
    let WD: SensorData
}

struct SensorData: Codable {
    let sol_hours_with_data: [Int]?
    let valid: Bool?
}
