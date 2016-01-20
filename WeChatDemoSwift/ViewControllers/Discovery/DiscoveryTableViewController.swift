//
//  DiscoveryTableViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class DiscoveryTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let refresh = UIRefreshControl.init()
        refresh.tintColor = kColorStyle
        refresh.addTarget(self, action: "refreshAction", forControlEvents: UIControlEvents.ValueChanged)
        
        self.refreshControl = refresh;
        
        self.tableView.contentInset = kContentInsetGroupStaticCell;
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if let flag = self.refreshControl?.refreshing {
            self.refreshControl?.endRefreshing()
        }
    }
    
    func refreshAction(){
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3*NSEC_PER_SEC)), dispatch_get_main_queue()) { () -> Void in
            if let flag = self.refreshControl?.refreshing {
                self.refreshControl?.endRefreshing()
            }
            
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
    }
    
    

}
