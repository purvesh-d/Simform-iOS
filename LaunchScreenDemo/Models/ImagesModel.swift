//
//  ImagesModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

struct ImagesModel {
    
    var imageData: String?
    var dataOfLabel: String?
    
    static func getImageData() -> [ImagesModel] {
        return [ImagesModel(imageData: "august", dataOfLabel: "August Burns Red"),
                ImagesModel(imageData: "breakdown", dataOfLabel: "Breakdown Sanity"),
                ImagesModel(imageData: "onedirection2", dataOfLabel: "One Direction"),
                ImagesModel(imageData: "NSYNC", dataOfLabel: "NSYNC"),
                ImagesModel(imageData: "backstreet2", dataOfLabel: "Backstreet Boys"),
                ImagesModel(imageData: "bts", dataOfLabel: "BTS")]
    }
}
