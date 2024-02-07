//
//  PhotoModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 6.02.2024.
//

import Foundation

struct PhotoModel: Codable {
    let img_src: String
    let earth_date: String
    let rover: RoverModel
    let camera: CameraModel
}

struct RoverModel: Codable {
    let name: String
    let landing_date: String
    let launch_date: String
    let status: String
}

struct CameraModel: Codable {
    let name: String
    let full_name: String
}

enum Rover: String, Codable, CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
    case Curiosty
}

enum NasaCamera: String, Codable, CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
    case ALL
    case FHAZ
    case RHAZ
    case MAST
    case CHEMCAM
    case MAHLI
    case MARDI
    case NAVCAM
    case PANCAM
    case MINITES
    
    static var allCases: [NasaCamera] {
        return [.FHAZ, .RHAZ, .CHEMCAM, .MAHLI, .NAVCAM]
        }
}


