//
//  HomeModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 03/05/23.
//

import UIKit

struct HomeModel {

    var imageName: String
    var title: String
    var subtitle: String
    
    static func getHomeData() -> [HomeModel] {
        return [HomeModel(imageName: "bedroom", title:  "BEDROOMS 1", subtitle: "2 drivces"),
            HomeModel(imageName: "bedroom", title: "BATHROOMS", subtitle: "4 drivces")]
    }
}
