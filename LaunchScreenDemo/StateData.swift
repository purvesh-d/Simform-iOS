//
//  StateData.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 13/04/23.
//

import UIKit

struct StateData {

    var stateName: String
    var cityName: [String]
    
    static func getData() -> [StateData] {
        return [StateData(stateName: "Arizona", cityName: ["Globe", "Phoenix"]),
                StateData(stateName: "California", cityName: ["Corona", "Indio", "San Diego", "San Francisco"]),
                StateData(stateName: "Florida", cityName: ["Lake City", "Orlando", "Venice"]),
                StateData(stateName: "New York", cityName: ["New York City", "Queens"]),
                StateData(stateName: "Pennsylvania", cityName: ["Bradford", "Harmony", "New Castle", "West Chester"]),
                StateData(stateName: "Texas", cityName: ["Austin", "McAllen", "Paris"]),
                StateData(stateName: "West Virginia", cityName: ["Beckley", "Princeton", "Weston"])]
    }
}


