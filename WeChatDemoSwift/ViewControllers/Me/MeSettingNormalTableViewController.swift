//
//  MeSettingNormalTableViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/17.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class MeSettingNormalTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableView.contentInset = kContentInsetGroupStaticCell;
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView .deselectRowAtIndexPath(indexPath, animated: true);
    }

}
