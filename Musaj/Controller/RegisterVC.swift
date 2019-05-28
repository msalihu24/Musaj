//
//  RegisterVC.swift
//  Musaj
//
//  Created by muhammad salihu on 5/25/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerPresssed(_ sender: Any) {
        
        
        
        //Set up a new user on our Firebase database
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in

            
            //If Register Unsuccessful, Do not perform segue
            if error != nil {
                print("error")
                self.shouldPerformSegue(withIdentifier: "goToHome", sender: self)
            }
                
                //If Register successful, Perform segue
            else {
                print("Successful")
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
    }
        

    
    //Prevent segue from occuring
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return false
    }
    
    
}


