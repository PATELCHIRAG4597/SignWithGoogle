//
//  AppDelegate.swift
//  SignWithGoogle
//
//  Created by CodeInfoWay CodeInfoWay on 3/18/23.

import UIKit
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
//           if error != nil || user == nil {
//            print ("Show the app's signed-out state.")
//           } else {
//            print ("Show the app's signed-in state.")
//           }
//         }
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        //guard let clientID = FirebaseApp.app()?.options.clientID else { return }
                
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: "838256168929-qo9ga6i753bsc8anar5ooo2s2d30enro.apps.googleusercontent.com")
                
        GIDSignIn.sharedInstance.configuration = config
        
        return true
    }
    func application(
      _ app: UIApplication,
      open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
      var handled: Bool

      handled = GIDSignIn.sharedInstance.handle(url)
      if handled {
        return true
      }

      // Handle other custom URL types.

      // If not handled by this app, return false.
      return false
    }
//
//     func application(_ app: UIApplication,
//                          open url: URL,
//                          options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//         let handle =   GIDSignIn.sharedInstance.handle(url)
//        return handle
//         }
    
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

