//
//  BaseViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit
import Contacts

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor();
    
        self.navigationController?.navigationBar.barTintColor = kColorNavigationBar;
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor();
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(), NSFontAttributeName:UIFont.boldSystemFontOfSize(20)];
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }

}
