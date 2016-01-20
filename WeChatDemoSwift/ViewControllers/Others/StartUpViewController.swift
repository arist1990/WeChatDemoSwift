//
//  StartUpViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class StartUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        self.performSelector("timeAction", withObject: nil, afterDelay: 1)
        
    }
    
    func timeAction(){
        self.performSegueWithIdentifier("StartupToHome", sender: nil);
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }



}
