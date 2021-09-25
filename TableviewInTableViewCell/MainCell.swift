//
//  MainCell.swift
//  TableviewInTableViewCell
//
//  Created by HT-Admin on 17/01/20.
//  Copyright © 2020 HT-Admin. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    let contacts:[[String]] = [
        ["Elon Musk",       "+1-201-3141-5926"],
        ["Bill Gates",      "+1-202-5358-9793"],
        ["Tim Cook",        "+1-203-2384-6264"],
        ["Richard Branson", "+1-204-3383-2795"],
        ["Jeff Bezos",      "+1-205-0288-4197"],
        ["Warren Buffet",   "+1-206-1693-9937"],
        ["The Zuck",        "+1-207-5105-8209"],
        ["Carlos Slim",     "+1-208-7494-4592"],
        ["Bill Gates",      "+1-209-3078-1640"],
        ["Larry Page",      "+1-210-6286-2089"],
        ["Harold Finch",    "+1-211-9862-8034"],
        ["Sergey Brin",     "+1-212-8253-4211"],
        ["Jack Ma",         "+1-213-7067-9821"],
        ["Steve Ballmer",   "+1-214-4808-6513"],
        ["Phil Knight",     "+1-215-2823-0664"],
        ["Paul Allen",      "+1-216-7093-8446"],
        ["Woz",             "+1-217-0955-0582"]
    ]
    
    @IBOutlet weak var tableSec: UITableView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tableSec.delegate = self
        tableSec.dataSource = self
        tableSec.register(UINib(nibName: "SecCell", bundle: nil), forCellReuseIdentifier: "SecCell")
        
    //    self.tableHeight.constant = self.tableSec.contentSize.height

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    override func layoutSubviews() {
//       self.tableHeight.constant = self.tableSec.contentSize.height
//    }

    
}


extension MainCell: UITableViewDelegate {
    
}

extension MainCell: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 21
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecCell", for: indexPath) as! SecCell

        cell.lblSec.text = "\(indexPath.row)"
     
        return cell
    }
    

}

     class MyOwnTableView: UITableView {
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }

    override var contentSize: CGSize {
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }

    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
    }
}
