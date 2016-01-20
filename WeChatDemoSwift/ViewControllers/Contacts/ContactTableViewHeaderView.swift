//
//  ContactTableViewHeaderView.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/20.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class ContactTableViewHeaderView: UITableViewHeaderFooterView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        
        self.textLabel?.frame = CGRectMake(10, 0, ScreenWidth, self.bounds.size.height)
        self.textLabel?.font = UIFont.systemFontOfSize(14)
        self.textLabel?.textColor = UIColor.darkGrayColor()
        
        if let view = self.textLabel?.superview {
            
        } else {
            self.contentView.addSubview(self.textLabel!)
        }
        
        
        self.contentView.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
    }

}
