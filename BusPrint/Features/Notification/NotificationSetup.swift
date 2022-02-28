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

class TrackNotifications : ObservableObject

// the following will run immediatley upon the app's start
    init()
{
    //connect to the database
    let db = Firestore.firestore()
    let bus_N = db.collection("GPS").document("7PEGCc4yuwSTZmi9RRnu")
    
    bus_N.addSnapshotListener { (docSnapshot, error) in
        if let error = error{
        
            print(error.localizedDescription)}
        
        else if let notify = docSnapshot{
            let message = docSnapshot.get("Notification")
            let note = messase as! String
            
            //the following fcreates a timestamp
            let date = Date()
            let calendar = NSCalendar.currentCalendar()
            let componenets = calendar.components(.CalendarUnitHour | CalendarUnitMinute, fromDate: date)
            let hour = components.hour
            let minutes = components.minute
        }
    }
    
}
