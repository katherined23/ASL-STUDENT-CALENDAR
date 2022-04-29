//
//  ViewController.swift
//  loginTwo
//
//  Created by Katherine Demetris on 3/4/22.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
        //Pre-linked IBOutlets
    
    var password = "asl2022"
    var check = false

    
    var emails = ["Charlotte_Cooper@asl.org", "Marion_Jones@asl.org",
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
    
    @IBOutlet weak var calendar: UIImageView!
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
        
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       // if Auth.auth().currentUser != nil {
       //    self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
    // }
    }

        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
    @IBAction func loginButton(_ sender: UIButton){
        let emailText: String = usernameTextField.text!
        let passwordText: String = passwordTextField.text!
        
        check = emails.contains(emailText)
        
        if check != true || passwordText != "asl2022" {
            let alertController = UIAlertController(title: "Login Failed", message: "Your email or password is incorrect. Please try again", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
