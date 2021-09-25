//
//  ViewController.swift
//  TableviewInTableViewCell
//
//  Created by HT-Admin on 17/01/20.
//  Copyright © 2020 HT-Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tableMain: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableMain.rowHeight = UITableView.automaticDimension
        tableMain.estimatedRowHeight = 100
        
        tableMain.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: "MainCell")
        

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCell

        cell.lblName.text = "Table View " + "\(indexPath.row)"
            return cell
       
         }
         
         func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
             return UITableView.automaticDimension
         }
         
         func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
             return UITableView.automaticDimension
         }
         
         func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         }
}

