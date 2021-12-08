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

    @StateObject var viewModel = AuthViewModel()



        var body: some Scene {

            WindowGroup {

                

               ContentView()
                    .environmentObject(viewModel)

                //TabSelectionView()

                   // .environmentObject(viewModel)

        }

    }

        

    }



    class AppDelegate: NSObject,UIApplicationDelegate{

        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:

                         [UIApplication.LaunchOptionsKey : Any]? = nil)-> Bool {

           

            

            FirebaseApp.configure()

            

            return true

        }

    }


