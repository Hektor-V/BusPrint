//
//  MapsCode.swift
//  TabViewReview
//
//  Created by Hector Vazquez on 11/9/21.
//

import SwiftUI
import FirebaseFirestore    //used for firestore Database
import Firebase             //used for realtime Database, could delete
import CoreLocation         //used to get location of the end user not bus
import MapKit               //applemaps


//the MapsCode sturct will conform to the UIviewRepresentable protcol and take in two paramaters. Latitude and longitude

struct TrackMapsView: UIViewRepresentable  {
    
    
    var geopoints1 = Double()               //the latitude
    var geopoint2 = Double()                //the latitude
        
    func makeCoordinator() -> TrackMapsView.Coordiantor {
        return TrackMapsView.Coordiantor()
    }
    
    
    
    let map = MKMapView()
    let manager = CLLocationManager()

    
    

    
    func makeUIView(context: UIViewRepresentableContext<TrackMapsView>) -> MKMapView {
        
        manager.delegate = context.coordinator
        manager.startUpdatingLocation()
        map.showsUserLocation = true
        manager.requestWhenInUseAuthorization()
        
             return map
         }
    
    
    
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<TrackMapsView>){
            
        
            let point = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: geopoints1, longitude: geopoint2)
        let center = CLLocationCoordinate2D(latitude: geopoints1, longitude: geopoint2)
            //point.title = i.key
            uiView.removeAnnotations(uiView.annotations)
            uiView.addAnnotation(point)
        //setting the span of the map view, referenced this video https://www.youtube.com/watch?v=DHpL8yz6ot0
        map.setRegion(MKCoordinateRegion(center: center ,span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)), animated: true)
        
        
        //customPin()
    }
    
    
    //custom pin not finished, getting errors.
    private func customPin()
    {
        let pin = MKPointAnnotation()
        pin.title = "Bus Location"
        map.addAnnotation(pin)
    }
    
    
    
    
    
    
    
    class Coordiantor : NSObject,CLLocationManagerDelegate{
        
        
           
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
        {
            if status == .denied{
                print("denied")
            }
            if status == .authorizedWhenInUse
            {
                print("authorized")
            }
        }
        
        
        
        
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            //let last = locations.last
           // print(last?.coordinate.latitude)
            
            
        }
    }
    
    
    
    
    

    }

