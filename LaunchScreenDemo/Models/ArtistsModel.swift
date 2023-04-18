//
//  ArtistsModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

struct ArtistsModel {
    
    var imageData: String?
    var artistsData: String?
    var detailsOfAlbum: String?
    
    static func getArtistsData() -> [ArtistsModel] {
        return [ArtistsModel(imageData: "august", artistsData: "August Burns Red"),
                ArtistsModel(imageData: "breakdown", artistsData: "Breakdown Sanity"),
                ArtistsModel(imageData: "onedirection2", artistsData: "One Direction"),
                ArtistsModel(imageData: "NSYNC", artistsData: "NSYNC"),
                ArtistsModel(imageData: "backstreet2", artistsData: "Backstreet Boys"),
                ArtistsModel(imageData: "bts", artistsData: "BTS")]
    }
    
    static func getAlbumsData() -> [ArtistsModel] {
        return [ArtistsModel(imageData: "album1", artistsData: "August Burns Red", detailsOfAlbum: "Death below"),
                ArtistsModel(imageData: "album2", artistsData: "August Burns Red", detailsOfAlbum: "Messangers"),
                ArtistsModel(imageData: "album3", artistsData: "August Burns Red", detailsOfAlbum: "Found in Fear"),
                ArtistsModel(imageData: "album4", artistsData: "August Burns Red", detailsOfAlbum: "Home"),
                ArtistsModel(imageData: "album1", artistsData: "August Burns Red", detailsOfAlbum: "Death below"),
                ArtistsModel(imageData: "album2", artistsData: "August Burns Red", detailsOfAlbum: "Messangers"),
                ArtistsModel(imageData: "album3", artistsData: "August Burns Red", detailsOfAlbum: "Found in Fear"),
                ArtistsModel(imageData: "album4", artistsData: "August Burns Red", detailsOfAlbum: "Home"),
                ArtistsModel(imageData: "album1", artistsData: "August Burns Red", detailsOfAlbum: "Death below"),
                ArtistsModel(imageData: "album2", artistsData: "August Burns Red", detailsOfAlbum: "Messangers"),
                ArtistsModel(imageData: "album3", artistsData: "August Burns Red", detailsOfAlbum: "Found in Fear"),
                ArtistsModel(imageData: "album4", artistsData: "August Burns Red", detailsOfAlbum: "Home")
        ]
    }
}
