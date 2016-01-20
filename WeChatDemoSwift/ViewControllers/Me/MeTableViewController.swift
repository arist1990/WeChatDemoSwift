//
//  MeTableViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class MeTableViewController: UITableViewController {

    @IBOutlet weak var ivImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ivImage.clipsToBounds = true;
        ivImage.layer.cornerRadius = 5.0;
        
        self.tableView.contentInset = kContentInsetGroupStaticCell;
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
    }

}
