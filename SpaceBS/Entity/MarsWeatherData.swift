//
//  MarsWeatherData.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 12.02.2024.
//

import Foundation

struct MarsWeatherData: Codable {
    let solKeys: [String]
    let validityChecks: ValidityChecks
}

struct ValidityChecks: Codable {
    let solHoursRequired: Int
    let solsChecked: [String]
    let solData: [String: SolData]
 
    struct SolData: Codable {
        let at: SensorData
        let hws: SensorData
        let pre: SensorData
        let wd: SensorData
        
        struct SensorData: Codable {
            let solHoursWithData: [Int]
            let valid: Bool
        }
    }
}
