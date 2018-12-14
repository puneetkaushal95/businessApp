//
//  LoginViewController.swift
//  Bharat Cement Store
//
//  Created by Puneet Kaushal on 2018-12-02.
//  Copyright © 2018 Puneet Kaushal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userMobileNumberTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userMobileNumber = userMobileNumberTextField.text;
        let userPassword = userPasswordTextField.text;
        
        let userMobileNumberStored = UserDefaults.standard.string(forKey: "userMobileNumber");
        let userPasswordStored = UserDefaults.standard.string(forKey: "userpassword ");
        
        if (userMobileNumberStored == userMobileNumber)
        {
            if (userPasswordStored == userPassword)
            {
                //Login Successful
                
                UserDefaults.standard.set(true, forKey:"isUserLoggedIn");
                UserDefaults.standard.synchronize();
                self.dismiss(animated: true, completion: nil);
            }
        }
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
