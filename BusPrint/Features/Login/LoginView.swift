//
//  LoginView.swift
//  Login Screen
//  Created by David Leung

//Initializes Firebase and SwiftUI into the app
import SwiftUI
import Firebase

//NSOject class that fixes issues with running xcode previewer
class FirebaseManager: NSObject {
    let auth: Auth
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        self.auth = Auth.auth()
        super.init()
    }
}

//View for the login page
struct LoginView: View {
    //Variables
    @State var loginMode = true
    @State var statusMessage = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                //Sets the background to black as a placeholder for app background
                Color.black.ignoresSafeArea()
                VStack {
                    //Text that switches depending on the bool loginMode
                    Text(loginMode ? "Sign In" : "Sign Up")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 120, alignment: .leading)
                        .padding(.trailing, 215)
                    //A picker that switches modes of the loginMode to display either the sign in or the sign up page
                    Picker(selection: $loginMode, label: Text("")) {
                        Text("Sign In").tag(true)
                        Text("Sign Up").tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                        .background(Color.gray)
                        .frame(width: 345, height: 40)
                        .cornerRadius(30)
                    //Email text and its textfield
                    EmailText()
                    TextField(" name@example.com", text: $email)
                        .frame(width: 345, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(5.0)
                    //Password text and its textfield
                    PasswordText()
                    SecureField(" ****************", text: $password)
                        .frame(width: 345, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                        .background(Color.white)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                  //Button that performs action depending on loginMode
                    Button {
                        doAction()
                    } label: {
                        HStack {
                            //Text on the login button that changes display depending on loginMode
                            Text(loginMode ? "Sign In" : "Create Account")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 345, height: 45)
                                .background(Color.blue)
                                .cornerRadius(5)
                        }
                    }
                    //Forgot password button that sends an email to reset password to the email that is in the email textfield
                    Button(action:{FirebaseManager.shared.auth.sendPasswordReset(withEmail: email) { (error) in
                    }}) {
                        ForgotButtonContent()
                    }
                    Text(self.statusMessage)
                        .foregroundColor(.white)
                }
            }
        }
    }
    //doAction function that selects which function to run depending on loginMode
    private func doAction(){
        if loginMode {
            loginUser()
        } else {
            createUser()
        }
    }
    //loginUser function that logs the user in when given the correct user credentials by finding if email and password match in Firebase user database
    //added error handling and a status message for testing purposes
    private func loginUser() {
        FirebaseManager.shared.auth.signIn(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to login user:", err)
                self.statusMessage = "Failed to login user: \(err)"
                return
            }
            print("Successfully logged in as user: \(result?.user.uid ?? "")")
            self.statusMessage = "Successfully logged in as user: \(result?.user.uid ?? "")"
        }
    }
    
    //createUser function creates a user account within Firebase user database with the provided credentials.
    //added error handling and a status message for testing purposes
    private func createUser() {
        FirebaseManager.shared.auth.createUser(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to create user:", err)
                self.statusMessage = "Failed to create user: \(err)"
                return
            }
            print("Successfully created user: \(result?.user.uid ?? "")")
            self.statusMessage = "Successfully created user: \(result?.user.uid ?? "")"
            //performs verifyUser function
            verifyUser()
        }
    }
    //verifyUser function that sends a verification email to the email address provided in the email textfield
    public func verifyUser() {
        if FirebaseManager.shared.auth.currentUser != nil && !FirebaseManager.shared.auth.currentUser!.isEmailVerified {
            FirebaseManager.shared.auth.currentUser!.sendEmailVerification(completion: { (error) in
            })
        }
        else {
        }
    }
}
//EmailText design
struct EmailText : View {
    var body: some View {
        return Text("Email")
            .foregroundColor(.white)
            .padding(.trailing, 300)
            .offset(x: 0, y: 7)
    }
}
  //PasswordText design
struct PasswordText : View {
    var body: some View {
        return Text("Password")
            .foregroundColor(.white)
            .padding(.trailing, 269)
            .offset(x: 0, y: 7)
    }
}
//ForgotButtonContent design
struct ForgotButtonContent : View {
    var body: some View {
        return Text("Forgot Password?")
            .foregroundColor(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
