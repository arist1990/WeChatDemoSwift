//
//  WeChatHomeSelectView.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeChatHomeSelectView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView.init(frame: CGRectMake(6, 10, 140-12, 194-12), style: UITableViewStyle.Plain)
    let imageView = UIImageView.init(frame: CGRectMake(0, 0, 140, 194))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.image = UIImage.init(named: "MoreFunctionFrame")
        self.addSubview(imageView)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 2.0
        tableView.backgroundColor = UIColor.redColor()
        tableView.scrollEnabled = false
        tableView.registerClass(WeiChatHomePopTableViewCell.self, forCellReuseIdentifier: "cell")
        self.addSubview(tableView)
        
        self.frame = CGRectMake(ScreenWidth-140+2, 64, 140, 190)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:WeiChatHomePopTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! WeiChatHomePopTableViewCell
        cell.backgroundColor = UIColor.clearColor()
        cell.contentView.backgroundColor = UIColor.clearColor()
        
        cell.index = indexPath.row
        
        cell.setNeedsLayout()
        
        // 为什么要加这两句，初始化tableview的时候设置了没有用吗？
        tableView.backgroundColor = UIColor.clearColor()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(100*NSEC_PER_MSEC)), dispatch_get_main_queue()) { () -> Void in
            self.myFunc!(selectIndex: indexPath.row)
        }
        
    }
    
    typealias selectIndexfunc = (selectIndex:Int) -> Void
    
    var myFunc = selectIndexfunc?()
    
    func initBack(function:(selectIndex:Int)->Void) {
        myFunc = function
    }

}
