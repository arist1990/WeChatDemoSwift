//
//  WeChatAddFriendTableViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/17.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeChatAddFriendTableViewController: UITableViewController {

    @IBOutlet weak var tfInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tableView.tableHeaderView = NSBundle.mainBundle().loadNibNamed("WeChatAddFriendTableHeaderView", owner: self, options: nil).last as? UIView;
       
        tfInput.tintColor = kColorStyle;
        
    }

    @IBAction func btnActionQRCode(sender: AnyObject) {
        let ctrl = WeChatUserInfoViewController.init()
        ctrl.isPrensented = false
        self.navigationController?.pushViewController(ctrl, animated: true)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddFriendPresentToUserInfo" {
            
        }
    }

}
