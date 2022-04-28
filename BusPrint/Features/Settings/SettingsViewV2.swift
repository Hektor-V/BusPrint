//
//  SettingsView.swift
//  Shared
//
//  Created by Vladimir N on 4/25/22.
//
import SwiftUI

struct SettingsView: View {
    var body: some View{
        NavigationView {
            
            Form{
                
                Section(header: Text("User")) {
                    
                    Toggle(isOn:.constant(true)){
                        Text("Dark Mode")
                    }
                    
                }
                
                Section(header: Text("Privacy")){
                    
                    Text("Privacy Policy")
                }
                
                Section(header: Text("Account")){
                    Text("Email")
                    Text("Password")
                    Text("Notifications")
                }
                
                
                Button("Sign Out"){
                    print("Signed Out")
                }

                
            }
            .navigationTitle("Settings")
        }
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
