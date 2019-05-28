//
//  SignInVC.swift
//  Musaj
//
//  Created by muhammad salihu on 5/25/19.
//  Copyright © 2019 muhammad salihu. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {
  
    //Connect UI Elements to Storyboard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SignInPressed(_ sender: Any) {
        
        //Perform Sign In authentication with Firebase
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user,error) in
        
            //If Sign In Unsuccessful, Do not perform segue
            if error != nil {
                print("error")
                self.shouldPerformSegue(withIdentifier: "goToHome", sender: self)
            }
        
            //If Sign In successful, Perform segue
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


