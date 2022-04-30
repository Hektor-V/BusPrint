//
//  PasswordView.swift
//  SettingsTesting
//
//  Created by Vladimir N on 4/29/22.
//

import SwiftUI
//import Firebase

// password view should prompt user to input their current password and their new desired password
struct PasswordView: View {
    
    @State private var password: String = ""
    @State private var newPassword: String = ""
    var body: some View {
        Form {
            Section("Current Password") {
                // current password == password

                TextField("", text: $password)
            }
                
            Section("New Password"){
                TextField("", text: $newPassword)
                    
            }
            Section("Confirm New Password"){
                TextField("", text: $newPassword)
            }
                
                
            // TODO: Implement functionality so that the user can change their password
            // if current password == password && newPassword isValid
            /*
            Have user confirm their password via email
            Sign the user out
            */
                
            // sign the user out of firebase
            /*
            let firebaseAuth = Auth.auth()
            do {
                 try firebaseAuth.signOut()
            } catch let signOutError as NSError {
                print("Error signing out: %@", signOutError)
             
            */
                
        }
        .navigationBarTitle("Change Password", displayMode: .inline)
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
