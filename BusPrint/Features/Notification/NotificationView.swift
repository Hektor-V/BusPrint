//
//  NotificationView.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//  Changed by Kian on 4/28/21

import SwiftUI
import FirebaseFirestore
import Firebase

struct NotificationView: View {
    
    @ObservedObject var hi = TrackNotifications()
    @State var newNotification: String = ""
   // let db = Firestore.firestore()
    
    var body: some View {
        //let coll = "GPS"
        //let docu = "pPnfvltnUIxzdMcz6iCO"
        
        
        ZStack{
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
                    }
                    
                    
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
                            Text(self.hi.notify)
                                .foregroundColor(.black)
                                
                           
                        }//.offset(y:170)
                    }
                
                    
                   
                    VStack{
                        TextField("Type in notification here...", text:$newNotification)
                        .offset(y:20)
                        .padding(.bottom, 10)
                        
                        ZStack{
                            
                            // Pressing the Button will update the Notifi field in firebase
                            // with the value in the text Field
                            
                            Button {
                                db.collection(coll).document(docu).setData(["Notifi" : newNotification])
                            } label: {
                                Text("Send New Notification")
                                    .offset(y: 20)
                                    //.resizable().frame(widvth: 35, height: 35)
                                    .padding(.bottom,15)
                                    .foregroundColor(.blue)
                                    .background(
                                        .white, in: RoundedRectangle(cornerRadius: 20))

                                        }

                            
                                                        
                                    }
                            }
                    
                    
                    
                    
                    
                        }
                    }
}

    


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
