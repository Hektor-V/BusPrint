//
//  Track.swift
//  TabViewReview
//
//  Created by Hector Vazquez on 11/9/21.
//

import SwiftUI
import FirebaseFirestore

struct TrackView: View {

    
    @ObservedObject var obs = TrackFirebase() //test1
    
    var body: some View {
        //MapsCode(name: self.name, geopoints: self.obs.data["data"] as! [String : Geopoint]).edgesIgnoringSafeArea(.top)
        TrackMapsView(geopoints1: self.obs.lat, geopoint2: self.obs.lon).edgesIgnoringSafeArea(.top)
            
        
            
    }
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView()
    }
}
