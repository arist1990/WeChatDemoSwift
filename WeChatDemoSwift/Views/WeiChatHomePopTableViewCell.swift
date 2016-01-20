//
//  WeiChatHomePopTableViewCell.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeiChatHomePopTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    let viewSep = UIView.init()
    var index = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if viewSep.superview == nil && index != 3 {
            viewSep.backgroundColor = UIColor.groupTableViewBackgroundColor().colorWithAlphaComponent(0.1)
            self.contentView.addSubview(viewSep)
        }
        
        viewSep.frame = CGRectMake(10, self.bounds.size.height-0.5, self.bounds.size.width, 0.5)

        self.textLabel?.text = ["发起群聊", "添加朋友", "扫一扫", "收付款"][index]
        self.textLabel?.textColor = UIColor.whiteColor()
        self.textLabel?.font = UIFont.systemFontOfSize(15)
        self.textLabel?.frame = CGRectMake(42, 0, self.bounds.size.width-42, self.bounds.size.height)
        
        self.imageView?.frame = CGRectMake(7, 7, 30, 30)
        self.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        self.imageView?.image = UIImage.init(named: ["contacts_add_newmessage", "contacts_add_friend", "contacts_add_scan", "receipt_payment_icon"][index])
        
    }

}
