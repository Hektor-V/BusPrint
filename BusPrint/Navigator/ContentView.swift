//
//  ContentView.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    

    var body: some View {
        
        TabView {
            
            
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                    
                }
//            Notification()
//                .tabItem {
//                    Image(systemName: "bell.fill")
//
//                    Text("Notification")
//
//
//                }.badge(1)
//
//            Track()
//                .tabItem {
//                    Image(systemName: "binoculars")
//                    Text("Track")
//                }
//            Settings()
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("Settings")
//
//                }

        }
        
        .accentColor(Color.primaryBlue)
        .cornerRadius(15)
        
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
