//
//  ContactHomeTableViewCell.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/20.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class ContactHomeTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        
        let width = self.bounds.height - 20
        
        self.imageView?.clipsToBounds = true
        self.imageView?.layer.cornerRadius = 5
        self.textLabel?.font = UIFont.systemFontOfSize(15)
        
        self.imageView?.frame = CGRectMake(10, 10, width, width);
        self.textLabel?.frame = CGRectMake(20+width, 0, ScreenWidth-30-width, self.bounds.size.height);
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
