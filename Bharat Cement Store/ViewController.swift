//
//  ViewController.swift
//  Bharat Cement Store
//
//  Created by Puneet Kaushal on 2018-11-28.
//  Copyright © 2018 Puneet Kaushal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
override func viewDidAppear(_ animated: Bool) {
    
    let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
    if(!isUserLoggedIn){
    
        self.performSegue(withIdentifier: "loginView", sender: "self");
    }
  }
    
    
    @IBAction func logoutButtonClicked(_ sender: Any) {
        UserDefaults.standard.set(false, forKey:"isUserLoggedIn");
        UserDefaults.standard.synchronize();
        
        self.performSegue(withIdentifier: "loginView", sender: "self");
    }
     
}

