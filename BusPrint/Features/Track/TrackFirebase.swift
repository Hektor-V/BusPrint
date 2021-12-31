//
//  TrackFirebase.swift
//  BusPrint
//
//  Created by Hector Vazquez on 12/31/21.
//


import Foundation
import SwiftUI
import FirebaseFirestore    //used for firestore Database
import Firebase             //used for realtime database might delete soon

class TrackFirebase : ObservableObject{
    
    //@Published var data = [String : Any]()                    //all test1 tags can be deleted if fails after this test, i will comment test1 to changes i've made to keep track
    @Published var lat = Double()                               //whenever declared as published you must reference self whenever messsing with the fucntion
    @Published var lon = Double()
                                                                //whatever is in the init() body will run automatically whenever this class is called.
    init()
    {
        
        let db = Firestore.firestore()                          //without this fucnction we would not be allowed to communicate with firebase
        
                                                            
                                                            
       
        let GPS = db.collection("GPS").document("7PEGCc4yuwSTZmi9RRnu")   // reference to the GPS2 collection then the documnet location1 inside that collection
                                                                //will be created if it doesn't exits
                
        //get the documents information from the data base in realtime with the snapshotListener
        //previous version used gps.getDocument but that would only read it once in comparason to snapshotListener which will grab and listen for
        //changes
        GPS.addSnapshotListener { (docSnapshot, error) in
            if let error = error{
                
                print(error.localizedDescription)
        }
            else if let docSnapshot = docSnapshot{
                
                let cordinates = docSnapshot.get("Bus-0")
                let point = cordinates as! GeoPoint
                self.lat = point.latitude
                self.lon = point.longitude
                print("Latitude: \(self.lat)")
                print("Longitude: \(self.lon)")
                print(docSnapshot.documentID)
                //print(docSnapshot.data())
                
               // let updates = docSnapshot.get("WSU") as! GeoPoint
                //look into geting that data as a geo point, if i do then i will need to change code for mapscode and alot more
                
                
                            }
            else {
                // no data
            }
           
           
        }
        
    }
}
    
//    func fetchData()
//    {
//
//
//        //.document("pSRl3zbL1okrGZFXuknW")
//
//        db.collection("gps").document("njxdjFQVd4HT7srHCIrN").addSnapshotListener{ (querySnapshot, error) in
//
//
////                            if err != nil{
////                                print ((err?.localizedDescription)!)
////
////                                return
//            guard let collection = querySnapshot?.collection else {
//            print("no documents")
//                return
//           }
//
//
//
//
//
//            self.data2 = collection.map {(QueryDocumentSnapshot)-> FirebaseGps in
//
//                let data = QueryDocumentSnapshot.data()
//
//                let latitude = data["Latitude"] as? String ?? ""
//                let longitude = data["Longitude"] as? String ?? ""
//
//                print(FirebaseGps(latitude: latitude, longitude: longitude))
//
//                return FirebaseGps(latitude: latitude, longitude: longitude)
//
////            let updates = snap?.get("njxdjFQVd4HT7srHCIrN") as! [String : GeoPoint]
////            self.data["data"] = updates
//
//
//            }
//
//
//
//
//
//            }
//
//
//
//
//        }
//

