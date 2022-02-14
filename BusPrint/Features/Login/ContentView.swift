//
//  LoginView.swift
//  Login Screen
//

import SwiftUI



struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                SignInText()
                EmailText()
                TextField("name@example.com", text: $email)
                    .frame(width: 345, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(5.0)
                PasswordText()
                SecureField("****************", text: $password)
                    .frame(width: 345, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Button(action:{}) {
                    SignInButtonContent()
                }
                HStack {
                    Button(action:{}) {
                        ForgotButtonContent()
                    }
                    Button(action:{}) {
                        SignUpButtonContent()
                    }
                }
            }
        }
    }
}

struct SignInText : View {
    var body: some View {
        return Text("Sign In")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.bottom, 20)
            .padding(.trailing, 245)
    }
}

struct EmailText : View {
    var body: some View {
        return Text("Email")
            .foregroundColor(.white)
            .padding(.trailing, 300)
    }
}
    
struct PasswordText : View {
    var body: some View {
        return Text("Password")
            .foregroundColor(.white)
            .padding(.trailing, 269)
    }
}

struct SignInButtonContent : View {
    var body: some View {
        return Text("Sign In")
            .foregroundColor(.white)
            .frame(width: /*@START_MENU_TOKEN@*/345.0/*@END_MENU_TOKEN@*/, height: 45.0)
            .background(Color.blue)
            .cornerRadius(5.0)
    }
}

struct ForgotButtonContent : View {
    var body: some View {
        return Text("Forgot Password?")
            .foregroundColor(.gray)
            .padding(.trailing, 65)
    }
}

struct SignUpButtonContent : View {
    var body: some View {
        return Text("Sign Up")
            .foregroundColor(.red)
            .padding(.leading, 65)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
