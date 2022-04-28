//
//  ContentView.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        
        if !isLoggedIn {
            
            LoginView(isLoggedIn: $isLoggedIn)
        } else {
            
            TabView {
                
                
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("home")
                        
                    }
                NotificationView()
                    .tabItem {
                        Image(systemName: "bell.fill")

                        Text("Notification")


                    }.badge(1)

                TrackView()
                    .tabItem {
                        Image(systemName: "binoculars")
                        Text("Track")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")

                    }

            }
            
            .accentColor(Color.primaryBlue)
            .cornerRadius(15)
        }
            
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
