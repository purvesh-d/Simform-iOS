//
//  LoginUpdates.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 16/05/23.
//

import Foundation
struct LoginUpdates {
    
    //MARK: - Variables
    static let loginDetails = LoginUpdates()
    let userDefaults = UserDefaults.standard
    
    //MARK: - Methods
    func isLoggedIn() -> Bool {
        return (userDefaults.string(forKey: "UserId") != nil)
    }
    
    func saveDetails(name: String, password: String) {
        userDefaults.set(UUID().uuidString, forKey: "UserId")
    }
    
    func removeDetails() {
        userDefaults.removeObject(forKey: "UserId")
        userDefaults.removeObject(forKey: "Username")
        userDefaults.removeObject(forKey: "Password")
    }
    
    func getUserName() -> String {
        userDefaults.string(forKey: "Username") ?? ""
    }
}
