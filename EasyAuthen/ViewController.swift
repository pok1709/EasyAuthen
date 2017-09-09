//
//  ViewController.swift
//  EasyAuthen
//
//  Created by alccmac on 9/9/2560 BE.
//  Copyright © 2560 SorapongPh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let loginDictionary = ["user1" : "pass1",
                           "user2" : "pass2"]
    
    var userString = ""
    var passwordString = ""
    
    let alertArray = ["User Fails", "Password Fail", "Welcome User"]
    
    
    
    @IBOutlet weak var messageLabelOutlet: UILabel!
    
    @IBOutlet weak var userTextFieldOutlet: UITextField!
    
    @IBOutlet weak var passwordTextFieldOutlet: UITextField!
    
    @IBAction func loginButtonOutlet(_ sender: Any) {
        
        userString = userTextFieldOutlet.text!
        passwordString = passwordTextFieldOutlet.text!
        
        print("user : \(userString)")
        print("password : \(passwordString)")
        
        let resultString = loginDictionary[userString]
        
        print("result : \(String(describing: resultString))")
        
        if (resultString == nil) {
            messageLabelOutlet.text = alertArray[0]
        } else {
            if(passwordString != resultString){
                messageLabelOutlet.text = alertArray[1]
            }else{
                messageLabelOutlet.text = alertArray[2]
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

