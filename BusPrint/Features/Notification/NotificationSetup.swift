//
//  NotificationSetup.swift
//  BusPrint
//
//  Created by Kian F on 2/28/22.
//

/* The object of this module will be the monitoring of the firebase bus-notification
 field. When the notification field is updated, the module will add a local timestamp to
 the notification and display that notification's message to the notification page in the app.
 After a specified amount of time, the notificaion will disappear.*/

import SwiftUI
import Foundation
import FirebaseFirestore
import Firebase


//This structure holds the notificaiton information for access
// this allows for up to ten notifications to show up at any time. Index will always point to the latest notification
// date will hold the point in time that the notification was read
struct CurrentNotification {
    var note = String()//Array(repeating: "", count:10)
    var index = 0
    var date = [Date()]
}

@Published var notify = String()

class TrackNotifications : ObservableObject
{
// the following will run immediatley upon the app's start
    init()
    {
        //public var notify = CurrentNotification()
        //connect to the database
        let db = Firestore.firestore()
        let bus_N = db.collection("GPS").document("7PEGCc4yuwSTZmi9RRnu")
        
        bus_N.addSnapshotListener { (docSnapshot, error) in
            if let error = error{
            
                print(error.localizedDescription)}
            
            else if let docSnapshot = docSnapshot{
                let message = docSnapshot.get("Notification")
                let note = message as! String
                self.notify = note
                
                //the following fcreates a timestamp
                //let CurrentNotification.date = Date()
                
                //then we update the index to show the next open notification slot
                //notify.index = (notify.index + 1) % 10
                
            }
        }
        
    }
}
