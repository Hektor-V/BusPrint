//
//  Checkedin.swift
//  BusPrint
//
//  Created by Hector Vazquez on 4/28/22.
//

import SwiftUI

struct Checkedin: View {
    
        
    var body: some View {
        ZStack{
            Image("wallpaper5")
                .resizable()
                .scaledToFill()
            
            VStack{
                
                Text("Check in")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top,30)
                        .ignoresSafeArea()
                        .offset(x: -100)
                        .foregroundColor(.black)

            
            VStack{
                    Text("AM check in")
                        .fontWeight(.bold)
                        .offset(x:-90)
                
                    ZStack{
                        Image(systemName: "checkmark.circle")
                            .renderingMode(.original)
                            .resizable().frame(width: 35, height: 35)
                            .offset(x: -120)
                            .padding(.vertical,15)
                            .padding(.horizontal, 150.0)
                            .background(
                                .white, in: RoundedRectangle(cornerRadius: 20))
                        Spacer()
                        Text("Kian - on am bus.")
                            .foregroundColor(.black)
                            }
                
                ZStack{
                    Image(systemName: "checkmark.circle")
                        .renderingMode(.original)
                        .resizable().frame(width: 35, height: 35)
                        .offset(x: -120)
                        .padding(.vertical,15)
                        .padding(.horizontal, 150.0)
                        .background(
                            .white, in: RoundedRectangle(cornerRadius: 20))
                    Text("Vladimir - on am bus.")
                        .foregroundColor(.black)
                        .offset(x:20)
                        }
                }
                
                
                VStack{
                    Text("PM check in")
                        .fontWeight(.bold)
                        .offset(x:-90)

                    
                    ZStack{
                        Image(systemName: "checkmark.circle")
                            .renderingMode(.original)
                            .resizable().frame(width: 35, height: 35)
                            .offset(x: -120)
                            .padding(.vertical,15)
                            .padding(.horizontal, 150.0)
                            .background(
                                .white, in: RoundedRectangle(cornerRadius: 20))
                        Text("Vladimir - on am bus.")
                            .foregroundColor(.black)
                            .offset(x:20)
                    }
                    ZStack{
                        Image(systemName: "checkmark.circle")
                            .resizable().frame(width: 35, height: 35)
                            .offset(x: -120)
                            .padding(.vertical,15)
                            .padding(.horizontal, 150.0)
                            .foregroundColor(.red)
                            .background(
                                .white, in: RoundedRectangle(cornerRadius: 20))
                        Text("Vladimir - on am bus.")
                            .foregroundColor(.black)
                            .offset(x:20)
                    }
                }
                
               
                
           
            }.offset(y:70)
        
        }
        
    }
}

struct Checkedin_Previews: PreviewProvider {
    static var previews: some View {
        Checkedin()
    }
}
