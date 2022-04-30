//
//  NotificationView.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//  Changed by Kian on 4/28/21

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack{
            //Rectangle().fill(Color.primaryDarkBlue).edgesIgnoringSafeArea(.top)
            //Rectangle().fill(Color.primaryBlue).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-320)
            //Rectangle().fill(Color.primaryRed).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-400)
            Image("wallpaper5")
                .resizable()
                .scaledToFill()
            
            
            
           
                
                VStack{
                    
                    Text("Notifications")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                            .padding(.top,30)
                            .ignoresSafeArea()
                            .offset(y: -70)
                  
//                    List(testing1.data2){ book in
//                        Text(book.longitude)
//                        Text(book.latitude)
//
//                    }
                    
                    
                    VStack{
                        ZStack{
                            Image(systemName: "bell.fill")
                                .resizable().frame(width: 35, height: 35)
                                .offset(x: -120)
                                .padding(.vertical,15)
                                .padding(.horizontal, 150.0)
                                .foregroundColor(.yellow)
                                .background(
                                    .white, in: RoundedRectangle(cornerRadius: 20))
                            Text(notify)
                                
                           
                        }//.offset(y:170)
                    }
                   
                       
                    
                   
                
                    
                    
                    
                }
                
            
                    .foregroundColor(Color.white)

        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
