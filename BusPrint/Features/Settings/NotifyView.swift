//
//  NotifyView.swift
//  SettingsTesting
//
//  Created by Vladimir N on 4/29/22.
//

import SwiftUI

struct NotifyView: View {
    
    @State var isNotifyOn: Bool = false
    @State var isNotifySMSOn: Bool = false
    var body: some View {
        Form {
            Section("Notifications") {
                Toggle(isOn: $isNotifyOn) {
                    Text("Send Me Notifications")
                }
            }
            
            Section("Messages") {
                Toggle(isOn: $isNotifySMSOn) {
                    Text("Send Me Messages")
                }
            }
            
        }
        .navigationBarTitle("Notifications", displayMode: .inline)    }
}

struct NotifyView_Previews: PreviewProvider {
    static var previews: some View {
        NotifyView()
    }
}
