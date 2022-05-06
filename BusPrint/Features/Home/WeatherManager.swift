//
//  WeatherManager.swift
//  BusPrint
//
//  Created by Hector Vazquez on 5/2/22.
//
/*
import Foundation
//import SwiftUI

class WeatherManger : ObservableObject
{
    
    @Published var name = String()
    
    func testing() {
        
        let urlString = "http://api.weatherstack.com/current?access_key=369369c7025cbe76a0242aa641f0360c&query=67235&units=f"
        
        let url = URL(string: urlString)
        
        guard url != nil
        else{
            print("bad url")
            return
        }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with:url!) {(data, response, error)
            in
            //checking for error
            if error == nil && data != nil
            {
                let decoder = JSONDecoder()
                
                do{
                    
                    let weatherdata = try decoder.decode(WeatherData.self, from: data!)
                    self.name = weatherdata as! String
                    print (self.name)
                    
                    
                }
                catch {
                    print("error in JSON Parsing")
                }
            }
        }
        
        //make the API Call
        dataTask.resume()
        
    }
    
    
}

   
    
    
struct WeatherData : Codable
{
    var current:[CurrentData]?
   // var forcast:[]?
}

struct CurrentData : Codable
{
    var temperature : String?
}
    


*/
