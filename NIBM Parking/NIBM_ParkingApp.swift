//
//  NIBM_ParkingApp.swift
//  NIBM Parking
//
//  Created by sandaruwani weerasinghe on 2021-11-11.
//

import SwiftUI
import Firebase

@main
struct NIBM_ParkingApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingwithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey : Any]? = nil)-> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
