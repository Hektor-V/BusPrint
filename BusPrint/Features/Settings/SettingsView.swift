//
//  SettingsView.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        

        ZStack{
            Rectangle().fill(Color.primaryDarkBlue).edgesIgnoringSafeArea(.top)
            Rectangle().fill(Color.primaryBlue).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-320)
            Rectangle().fill(Color.primaryRed).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-400)
            
            
 
            
            ScrollView(.vertical,showsIndicators: false)
            {
                
                VStack{
                    
                    Text("Settings")
                            .font(.largeTitle)
                            .bold()
                            .padding(.top,30)
                            .ignoresSafeArea()
                            .offset(x: -85)
                  
                    
                    
                    
                    
                    ZStack{
                        Image(systemName: "person")
                            .resizable().frame(width: 35, height: 35)
                            .offset(x: -120)
                            .padding(.vertical,15)
                            .padding(.horizontal, 150.0)
                            .background(
                                .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
                        Text("Account")
                            
                       
                    }
                    ZStack{
                        Image(systemName: "power")
                            .resizable().frame(width: 35, height: 35)
                            .offset(x: -120)
                            .padding(.vertical,15)
                            .padding(.horizontal, 150.0)
                            .background(
                                .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
                        Text("Logout")
                            
                       
                    }
                       
                    
                        
                    
                }
                
            }
                    .foregroundColor(Color.white)
        }
        }
            
        }
            

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
