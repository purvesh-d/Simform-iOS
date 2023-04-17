//
//  AlbumsModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 17/04/23.
//

import UIKit

struct AlbumsModel {

    var imageOfAlbum: String
    var lablOfAlbum: String
    var detailsOfAlbum: String
    
    static func getData() -> [AlbumsModel] {
        return [
                AlbumsModel(imageOfAlbum: "album1", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Death below"),
                AlbumsModel(imageOfAlbum: "album2", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Messangers"),
                AlbumsModel(imageOfAlbum: "album3", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Found in Fear"),
                AlbumsModel(imageOfAlbum: "album4", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Home"),
                AlbumsModel(imageOfAlbum: "album1", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Death below"),
                AlbumsModel(imageOfAlbum: "album2", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Messangers"),
                AlbumsModel(imageOfAlbum: "album3", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Found in Fear"),
                AlbumsModel(imageOfAlbum: "album4", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Home"),
                AlbumsModel(imageOfAlbum: "album2", lablOfAlbum: "August Burns Red", detailsOfAlbum: "Messangers")
            ]
    }
}
