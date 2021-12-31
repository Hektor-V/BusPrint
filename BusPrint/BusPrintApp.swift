//
//  TabViewReviewApp.swift
//  TabViewReview
//
//  Created by Hector Vazquez on 11/9/21.
//

import SwiftUI
import Firebase                         //allows us to call the firebaseapp.configure in appdelagte section
import FirebaseCore
                                        //https://firebase.google.com/docs/database/ios/start
                                        //for more information/documentation check out the firebase website with link above




class AppDelegate: NSObject, UIApplicationDelegate    {
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
         
         return true
     }
 }


@main
struct BusPrintApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
