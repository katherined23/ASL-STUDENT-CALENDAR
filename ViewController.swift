//
//  ViewController.swift
//  scheduleScreen
//
//  Created by Alexandros Roche on 19/04/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var check = false
    
    let studentEmails = ["Charlotte_Cooper@asl.org",
                         
                         "Marion_Jones@asl.org",
                         
                         "Alex_Okpoyo@asl.org",

                         "Andrew_Okpoyo@asl.org",

                         "Laurence_Doherty@asl.org",

                         "Raymond_Basset@asl.org",

                         "Jean_Collas@asl.org",

                         "Karl_Staaf@asl.org",

                         "Nicola_Adams@asl.org",

                         "Jenny_Thompson@asl.org",

                         "Isabell_Werth@asl.org",

                         "Dara_Torres@asl.org",

                         "Ray_Ewry@asl.org",

                         "Natalie_Coughlin@asl.org",

                         "Alexei_Nemov@asl.org",

                         "Amanda_Beard@asl.org",

                         "Simona_Amanar@asl.org",

                         "Nelli_Kim@asl.org",

                         "Ralph_Rose@asl.org",

                         "Shane_Gould@asl.org"]
    
    let arrayID = ["98620",
                   
                   "106261",
                   
                   "105114",
                   
                   "105115",
                   
                   "81800",
                   
                   "107458",
                   
                   "78239",
                   
                   "105195",
                   
                   "80672",
                   
                   "55795",
                   
                   "1427",
                   
                   "97630",
                   
                   "77477",
                   
                   "72521",
                   
                   "110300",
                   
                   "64478",
                   
                   "98878",
                   
                   "93508",
                   
                   "64733",
                   
                   "1191"]
    
    
    @IBOutlet var usernameField: UITextField!
    
        @IBAction func searchButton(_ sender: UIButton) {
            let usernameText: String = usernameField.text!
            print(usernameText)
                        
            check = studentEmails.contains(usernameText)
            
            for email in studentEmails {
                if check == true {
                    let i = email.count
                    let studentID = arrayID[i-1]
                    print("Hi")
                    print(studentID)
                    if check != true {
                        print("Error")
                }
            }
        }
        }
}
