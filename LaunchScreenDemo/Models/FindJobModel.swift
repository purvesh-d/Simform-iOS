//
//  FindJobModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/04/23.
//

import UIKit

class FindJobModel: NSObject {
    
    var imageName: String?
    var companyName: String?
    var currentOpening: String?
    var isSelected: Bool = false
    
    override init() {
        super.init()
    }

    init(_ img: String, _ company: String, _ opening: String) {
        imageName = img
        companyName = company
        currentOpening = opening
    }
    
    static func getCurrentOpening() -> [FindJobModel] {
        return [FindJobModel("facebook", "Facebook", "Data Engineer"),
                FindJobModel("google", "Google", "Native Mobile"),
                FindJobModel("linkdin", "LinkdIn", "QA"),
                FindJobModel("twitter", "Twitter", "HR"),
                FindJobModel("microsoft", "Microsoft", "testing"),
                FindJobModel("apple", "Apple", "React Js")
        ]
    }
}
