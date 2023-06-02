import UIKit
import UserNotifications

let center = UNUserNotificationCenter.current()
let content = UNMutableNotificationContent()

content.title = "Title"
content.body = "Body"
content.sound = .default

let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 20, repeats: false)
let request = UNNotificationRequest(identifier: "title", content: content, trigger: trigger)
center.add(request) { error in
    if error != nil {
        print("Error : \(error?.localizedDescription ?? "Error at center add request")")
    }
    else {
        print("Successfull at center add request.")
    }
}

// Uygulama kapalıyken gelen bildirim.
