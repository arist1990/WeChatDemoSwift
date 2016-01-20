//
//  WeiChatHomeViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeiChatHomeViewController: BaseViewController ,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let popWindowView:PopWindowView = PopWindowView.init()
    let wechatHomeSelectView:WeChatHomeSelectView = WeChatHomeSelectView.init(frame: CGRectZero)
    
//    let data:NSMutableArray = NSMutableArray.init()
    let data:NSMutableArray = NSMutableArray.init(contentsOfFile: NSBundle.mainBundle().pathForResource("WeiChatListDataSource", ofType: "plist")!)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(WeiChatHomeTableViewCell.self, forCellReuseIdentifier: "cell");
        
//        let d:NSArray = NSArray.init(contentsOfFile: NSBundle.mainBundle().pathForResource("WeiChatListDataSource", ofType: "plist")!)!
//        data.addObjectsFromArray(d)
        
        wechatHomeSelectView.initBack{(selectIndex) -> Void in
            
            self.popWindowView.hide()
            
            if selectIndex == 0 {
//                self.performSegueWithIdentifier("", sender: nil)
            } else if selectIndex == 1 {
                self.performSegueWithIdentifier("WeChatHomePushToAddFriend", sender: nil)
            } else if selectIndex == 2 {
                self.performSegueWithIdentifier("WeChatHomeToScan", sender: nil)
            } else if selectIndex == 3 {
                self.performSegueWithIdentifier("PresentShouFuKuan", sender: nil)
            }

        }
        
    }
    
    @IBAction func pushAction(sender: UIBarButtonItem) {
        popWindowView.showWithContentView(wechatHomeSelectView)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! WeiChatHomeTableViewCell
        let row = indexPath.row as Int;
        
        cell.data = self.data[row] as! Dictionary<String, String>
        cell.setNeedsLayout()
        
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Delete
    }
    
    @available(iOS 8.0, *)
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let action1 = UITableViewRowAction.init(style: UITableViewRowActionStyle.Normal, title: "设为未读") { (action:UITableViewRowAction, index:NSIndexPath) -> Void in
            
            self.tableView.reloadRowsAtIndexPaths([index], withRowAnimation: UITableViewRowAnimation.Automatic)
            
        }
        
        let action2 = UITableViewRowAction.init(style: UITableViewRowActionStyle.Default, title: "删除") { (action:UITableViewRowAction, index:NSIndexPath) -> Void in
            
            self.data.removeObjectAtIndex(index.row)
            self.tableView.beginUpdates()
            self.tableView.deleteRowsAtIndexPaths([index], withRowAnimation: UITableViewRowAnimation.Automatic)
            self.tableView.endUpdates()
        }
        return [action2, action1]
        
    }

}
