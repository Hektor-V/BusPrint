//
//  BusPrintApp.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//

import SwiftUI
import Firebase
import FirebaseCore

@main
struct BusPrintApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
