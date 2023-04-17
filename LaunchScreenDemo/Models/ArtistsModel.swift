//
//  ArtistsModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

struct ArtistsModel {
    
    var imageData: String
    var artistsData: String
    
    static func getData() -> [ArtistsModel] {
        return [ArtistsModel(imageData: "august", artistsData: "August Burns Red"),
                ArtistsModel(imageData: "breakdown", artistsData: "Breakdown of Sanity"),
                ArtistsModel(imageData: "onedirection2", artistsData: "One Direction"),
                ArtistsModel(imageData: "NSYNC", artistsData: "NSYNC"),
                ArtistsModel(imageData: "backstreet2", artistsData: "Backstreet Boys"),
                ArtistsModel(imageData: "bts", artistsData: "BTS")]
    }
}
