//
//  MeSettingLangueTableViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/17.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class MeSettingLangueTableViewController: UITableViewController {

//    let data:NSMutableArray = NSMutableArray.init();
    
    var data = [(NSDictionary)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        data.append(<#T##newElement: NSDictionary##NSDictionary#>)
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell");
    }
    
    @IBAction func leftEvent(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        };
    }
    
    @IBAction func rightEvent(sender: AnyObject) {
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        };
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)


        return cell;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView .deselectRowAtIndexPath(indexPath, animated: true);
    
    }

}
