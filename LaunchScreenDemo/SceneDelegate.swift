//
//  SceneDelegate.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 15/02/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        print(#function)
        
        //To call TabBarLoginViewController 
        /*let storyboard = UIStoryboard(name: "NavigationController", bundle: nil)
        let rootVC = LoginUpdates.loginDetails.isLoggedIn() ? storyboard.instantiateViewController(withIdentifier: "TabBarLoginViewController") : storyboard.instantiateViewController(withIdentifier: "LoginViewController")
        let navigationController = UINavigationController(rootViewController: rootVC)
        window?.rootViewController = navigationController
        navigationController.setNavigationBarHidden(true, animated: true)
        window?.makeKeyAndVisible()*/
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        print(#function)
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }
}
