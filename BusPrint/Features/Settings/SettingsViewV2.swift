import SwiftUI
import Firebase

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("App Settings")){
                    Text("settings test")

                    Toggle(isOn: .constant(true),
                        label: {
                            Text("Dark Mode")
                    })  
                }

                Button("Sign Out", role: destructive, action: signOut)
            }
            .navigationTitle("Settings")
        }
    }
}

Struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
