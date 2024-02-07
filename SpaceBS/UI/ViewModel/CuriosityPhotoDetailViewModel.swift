//
//  MarsPhotoDetailViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 7.02.2024.
//

import Foundation

class CuriosityPhotoDetailViewModel {
    var photoModel: PhotoModel
    
    init(photoModel: PhotoModel)
    {
        self.photoModel = photoModel
    }
    
    func populateData() -> (imgURL: URL?, earthDate: String, roverName: String, cameraName: String, roverStatus: String, launchDate: String, landingDate: String)
    {
        let imgURL = URL(string: photoModel.img_src)
        let earthDate = "Earth Date : \(photoModel.earth_date)"
        let roverName = "Rover Name : \(photoModel.rover.name)"
        let cameraName = "Camera Name : \(photoModel.camera.name)"
        let roverStatus = "Rover Status : \(photoModel.rover.status)"
        let launchDate = "Launch Date : \(photoModel.rover.launch_date)"
        let landingDate = "Landing Date : \(photoModel.rover.landing_date)"
        return (imgURL, earthDate, roverName, cameraName, roverStatus, launchDate, landingDate)
    }
}

