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
    
    init() {
         FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
