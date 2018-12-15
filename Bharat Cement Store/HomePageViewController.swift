//
//  HomePageViewController.swift
//  Bharat Cement Store
//
//  Created by Puneet Kaushal on 2018-12-11.
//  Copyright © 2018 Puneet Kaushal. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblview: UITableView!
    //@IBOutlet weak var tableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return home.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tblview.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = home[indexPath.row]
        return cell
    }
    

    
    @IBOutlet weak var homeScreenTable: UITableView!
    var home:[String] = ["Home", "Contacts"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        self.tblview.dataSource = self
        
        self.title = "Welcome"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
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
