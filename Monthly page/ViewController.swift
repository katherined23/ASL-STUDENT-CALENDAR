//
//  ViewController.swift
//  Monthly page
//
//  Created by Alexandros Roche on 16/02/2022.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    //Hey
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound])
            { (permissionGranted, error) in
        }
            print("Success.")
    }
    
        
//        let content = UNMutableNotificationContent()
//        content.title = "Notification"
//        content.body = "Your event is five minutes away"
//
//        let date = Date().addingTimeInterval(5)
//
//        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
//
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
//
//        let uuidString = UUID().uuidString
//        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
    
    
    var selectedDate = Date()
    var totalSqaures = [String]()

    func setCellsView()
    {
        let width = (collectionView.frame.size.width - 2) / 8
        let height = (collectionView.frame.size.height - 2) / 8

        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        flowLayout.itemSize = CGSize(width: width, height: height)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        totalSqaures.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "calCell", for: indexPath) as! CalendarCell

        cell.dayOfMonth.text = totalSqaures[indexPath.item]
        
        return cell
    }
    
    var i = 12
    
    @IBOutlet weak var monthTitle: UILabel!
    @IBOutlet weak var rangeErrorMessage: UILabel!
    @IBOutlet weak var lastDayStack: UIStackView!
    @IBAction func backMonthButton(_ sender: UIButton) {
        rangeErrorMessage.alpha = 0
        lastDayStack.alpha = 1
        sender.alpha = 1
        let arrayMonth = ["January 2021", "February 2021", "March 2021", "April 2021", "May 2021", "June 2021", "July 2021", "August 2021", "September 2021", "October 2021", "November 2021", "December 2021", "January 2022", "February 2022", "March 2022", "April 2022", "May 2022", "June 2022", "July 2022", "August 2022", "September 2022", "October 2022", "November 2022", "December 2022"]
        
        i = i - 1
        monthTitle.text = arrayMonth[i]
        
        if arrayMonth[i] == "February 2021" {
            lastDayStack.alpha = 0
        }
        
        if arrayMonth[i] == "February 2022" {
            lastDayStack.alpha = 0
        }
        
        if i == 0 {
            rangeErrorMessage.alpha = 1
            rangeErrorMessage.text = "Remain in month range by clicking the forward button"
            sender.alpha = 0
            i = i + 1
            if i == 1 {
                sender.alpha = 1
            }
        }
        
    }
    
    @IBAction func forwardMonthButton(_ sender: UIButton) {
        rangeErrorMessage.alpha = 0
        lastDayStack.alpha = 1
        sender.alpha = 1
        let arrayMonthForward = ["January 2021", "February 2021", "March 2021", "April 2021", "May 2021", "June 2021", "July 2021", "August 2021", "September 2021", "October 2021", "November 2021", "December 2021", "January 2022", "February 2022", "March 2022", "April 2022", "May 2022", "June 2022", "July 2022", "August 2022", "September 2022", "October 2022", "November 2022", "December 2022"]
        
        i = i + 1
        monthTitle.text = arrayMonthForward[i]
        
        if arrayMonthForward[i] == "February 2021" {
            lastDayStack.alpha = 0
        }
        
        if arrayMonthForward[i] == "February 2022" {
            lastDayStack.alpha = 0
        }
        
        if i == 23 {
            rangeErrorMessage.alpha = 1
            rangeErrorMessage.text = "Remain in month range by clicking the backward button"
            sender.alpha = 0
            i = i - 1
            if i == 22 {
                sender.alpha = 1
            }
        }
    }

    @IBAction func previousMonth(_ sender: Any) {

    }

    @IBAction func nextMonth(_ sender: Any) {
        
    }

}
