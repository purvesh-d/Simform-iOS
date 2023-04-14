//
//  DemoData.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 14/04/23.
//

import UIKit

struct DemoData {
    
    var sectionName: String
    var dataName: [String]
    
    static func getData() -> [DemoData] {
        return [DemoData(sectionName: "Fruits", dataName: ["Apple", "Banana", "Mango", "Watermelon"]),
                DemoData(sectionName: "Colors", dataName: ["Black", "Green", "Yellow", "white", "blue", "Black", "Green", "Yellow", "white", "blue", "Black", "Green", "Yellow", "white", "blue", "Black", "Green", "Yellow", "white", "blue","Black", "Green", "Yellow", "white", "blue"]),
                DemoData(sectionName: "Benefits of eating healthy food", dataName: ["Healthy food refers to food that contains the right amount of nutrients to keep our body fit. We need healthy food to keep ourselves fit.Furthermore, healthy food is also very delicious as opposed to popular thinking.", "Healthy food refers to food that contains the right amount of nutrients to keep our body fit. We need healthy food to keep ourselves fit.Furthermore, healthy food is also very delicious as opposed to popular thinking.", "Healthy food refers to food that contains the right amount of nutrients to keep our body fit. We need healthy food to keep ourselves fit.Furthermore, healthy food is also very delicious as opposed to popular thinking."])]
    }
}

