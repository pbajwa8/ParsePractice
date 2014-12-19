//
//  SignUpController.swift
//  ParsePractice
//
//  Created by Parambir Bajwa on 12/18/14.
//  Copyright (c) 2014 Parambir Bajwa. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    
    
    @IBOutlet var emailField: UITextField!
    
    @IBOutlet var passField: UITextField!
    
    @IBOutlet var success: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(sender: AnyObject) {
        
        var user = PFUser()
        user.username = emailField.text
        user.password = passField.text
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                
                self.success.text = "success"
                
            } else {
              
                println("failure")
            
            }
        }
}
}

    
