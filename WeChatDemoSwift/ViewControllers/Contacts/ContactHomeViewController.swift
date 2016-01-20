//
//  ContactHomeViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class ContactHomeViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let data:NSMutableArray = NSMutableArray.init(contentsOfFile: NSBundle.mainBundle().pathForResource("ContactList", ofType: "plist")!)!
    
    var dataTitles:[String] = []
    var dataIndexs:Dictionary<String, Int> = Dictionary.init(minimumCapacity: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...self.data.count-1 {
            let dic = self.data[i]
            var str = dic.objectForKey("title") as! String
            if i == 0 {
                let index = str.startIndex.advancedBy(1) //swift 2.0+
                str = str.substringToIndex(index)
            }
            dataIndexs[str] = 1
            
            dataTitles.append(str)
            dataTitles.append("")
            dataTitles.append("")
        }
        dataTitles.append("#")
        
        self.tableView.registerClass(ContactHomeTableViewCell.self, forCellReuseIdentifier: "ContactHomeTableViewCell")
        
        self.tableView.registerClass(ContactTableViewHeaderView.self, forHeaderFooterViewReuseIdentifier: "ContactTableViewHeaderView")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let dic = self.data[section]
        let array = dic.objectForKey("list") as! NSArray
        
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactHomeTableViewCell") as! ContactHomeTableViewCell
        
        let dic = self.data[indexPath.section]
        let array = dic.objectForKey("list") as! NSArray
        let d:Dictionary = (array[indexPath.row] as? Dictionary<String, String>)!
        
        cell.imageView?.image = UIImage.init(named: "wechat_list_" + d["photo"]!)
        cell.textLabel?.text = d["name"]
        
        cell.setNeedsLayout()
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("ContactTableViewHeaderView") as! ContactTableViewHeaderView
        
        let dic = self.data[section]
        let title = dic.objectForKey("title") as! String
        
        headerView.textLabel?.text = title
        headerView.setNeedsLayout()
        
        return headerView
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20;
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]?{
        return dataTitles
    }

    /*
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
//        dataTitles.indexOf(<#T##element: String##String#>)
//        let index = dataTitles.indexOf(title)!
        let i = dataIndexs.indexForKey(title)
        i.
//        NSLog("titles:%@", dataTitles)
        NSLog("title:%@ index:%@", title, "\(index)")
        
        return index
    }
    */
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }


}
