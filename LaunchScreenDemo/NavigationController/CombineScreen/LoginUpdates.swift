//
//  LoginUpdates.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 16/05/23.
//

import Foundation
struct LoginUpdates {
        
    static let loginDetails = LoginUpdates()
    let userDefaults = UserDefaults.standard
    
    func isLoggedIn() -> Bool {
        return (userDefaults.string(forKey: "UserId") != nil)
    }
    
    func saveDetails(name: String, password: String) {
        userDefaults.set(UUID().uuidString, forKey: "UserId")
        userDefaults.set(name, forKey: "Username")
        userDefaults.set(password, forKey: "Password")
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
