//
//  Home.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/29/21.
//

import SwiftUI
extension Color {
    
    static let primaryBlue = Color("blue")
    static let primaryDarkBlue = Color("darkblue")
    static let primaryRed = Color("red")
    static let textcolor = Color("text")
    static let tabcolor = Color("tabview")
}



struct HomeView: View
    {
        @State var date = Date()                        // Date() is the initializer for Date objects, which retrieve date & time information based on the user’s region.
    //let time = ObservableObject
       // @ObservedObject var hello = WeatherManger()
        var body: some View{
            ZStack{
                
               // Rectangle().fill(Color.primaryDarkBlue).edgesIgnoringSafeArea(.top)
                //Rectangle().fill(Color.primaryBlue).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-320)
               // Rectangle().fill(Color.primaryRed).frame(width: 300, height:300).cornerRadius(30).rotationEffect(.degrees(-45.0)).offset(x:-100, y:-400)
                
                    //.background(Color.primaryDarkBlue.ignoresSafeArea(.all).scaledToFill())
                Image("wallpaper5")
                    .resizable()
                    .scaledToFill()

               // ScrollView(.vertical,showsIndicators: false)
                //{
                    
                    VStack{
                        
                        Text("Welcome Hector")
                                .font(.largeTitle)
                                .bold()
                                //.padding(.top,30)
                                //.ignoresSafeArea()
                                .foregroundColor(.black)
                                
                        Text(String(timeString(date: date)))
                            .onAppear(perform: {let _ = self.updateTimer})
                            //padding(.top,20)
                            .foregroundColor(.gray)
                            
                            
                    }.offset(y:-70)
                                
                        VStack{
                        Text("Weather")
                                .font(.largeTitle)
                                //.padding(.top,30)
                                .offset(x: -110)
                                .foregroundColor(.black)
                                //.ignoresSafeArea()
                            Text("Wichita - KS")
                                .offset(x:-110)
                                .foregroundColor(.gray)
                        
                        
                        ZStack{
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable().frame(width: 35, height: 35)
                                .offset(x: -120)
                                .padding(.vertical,15)
                                .padding(.horizontal, 150.0)
                                .background(
                                    .white, in: RoundedRectangle(cornerRadius: 20))
                            Text("Today")
                                .offset(x: -60)
                                .foregroundColor(.black)
                            Text("90 F / 81 F")
                                .offset(x:80)
                                .foregroundColor(.gray)
                        }
                           
                            
                        ZStack{
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable().frame(width: 35, height: 35)
                                .offset(x: -120)
                                .padding(.vertical,15)
                                .padding(.horizontal, 150.0)
                                .background(
                                    .white, in: RoundedRectangle(cornerRadius: 20))
                            Text("Thursday")
                                .offset(x: -60)
                                .foregroundColor(.black)
                            Text("90 F / 81 F")
                                .offset(x:80)
                                .foregroundColor(.gray)
                        }
                            
                        ZStack{
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable().frame(width: 35, height: 35)
                                .offset(x: -120)
                                .padding(.vertical,15)
                                .padding(.horizontal, 150.0)
                                .background(
                                    .white, in: RoundedRectangle(cornerRadius: 20))
                        Text("Friday")
                                .font(.system(size: 17))
                                .offset(x: -60)
                                .foregroundColor(.black)
                            Text("90 F / 81 F")
                                .offset(x:80)
                                .foregroundColor(.gray)
    //
                        }
                        
                        
                        
    //                        .background(
    //                        .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
                        
                        
    //                    Image(systemName: "clock")
    //                        .resizable()
    //                        .frame(width: 70.0, height: 70.0)
    //                        .padding(60)
    //                        .background(
    //                            .ultraThickMaterial, in: RoundedRectangle(cornerRadius: 20))
                        }.offset(y:170)
                    
                    
                //}
                        //.foregroundColor(Color.textcolor)
                
                    
                        //.navigationBarTitle("Welcome, Hector")
                   
                       
                    
                        

                
                
                
                
                
            }
            
            
            
            
        }
        var timeFormat : DateFormatter {
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm a"
            return formatter
        }
        
        func timeString(date: Date) -> String {
             let time = timeFormat.string(from: date)
             return time
        }
        
        var updateTimer: Timer {
             Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
                                  block: {_ in self.date = Date()})
        }
        
        //the code above is for a live clock, timeformat , timeString and UpdateTimer.
        //This code can be refrenced if you dont understand it at https://medium.com/iu-women-in-computing/intro-to-swiftui-digital-clock-d0a60e05d394
        
        
        
    }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
