//
//  RegisterPageViewController.swift
//  Bharat Cement Store
//
//  Created by Puneet Kaushal on 2018-11-28.
//  Copyright © 2018 Puneet Kaushal. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let userEmail =  userEmailTextField.text;
        let userPassword = passwordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //checking empty fields
        
        if(userEmail!.isEmpty || userPassword!.isEmpty || userRepeatPassword!.isEmpty)
        {
            //display alert message
            displayAlertMessage(userMessage: "All Fields are required !");
            
            return;
        }
        
        //check if password match
        if(userPassword != userRepeatPassword)
        {
            //display alert message
            displayAlertMessage(userMessage: "Passwords do not match !");
            
            return;
        }
        
        //store data
        UserDefaults.standard.set(userEmail,forKey:"userEmail");
        UserDefaults.standard.set(userPassword,forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
        //display alert message with confirmation
        let myAlert = UIAlertController(title: "Alert", message: "Thank you for being a part of our team", preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default){
            action in self.dismiss(animated: true, completion: nil);
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated: true, completion:nil);
    }
    
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertAction.Style.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
