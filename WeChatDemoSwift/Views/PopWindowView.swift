//
//  PopWindowView.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class PopWindowView: UIView {

    var contentViewFrame = CGRectZero
    
    var contentView = UIView.init()
    
    func showWithContentView(view :UIView) {
        self.alpha = 0
        
        self.frame = UIScreen.mainScreen().bounds
        
        contentViewFrame = view.frame
        self.contentView = view;
        
        self.addSubview(view)
        
        UIApplication.sharedApplication().keyWindow?.addSubview(self)
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.alpha = 1;
        }
        
    }
    
    func hide(){
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.alpha = 0;
        
            }) { (Bool) -> Void in
                for view:UIView in self.subviews {
                    view.removeFromSuperview()
                }
                self.removeFromSuperview()
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let point:CGPoint = (touch?.locationInView(self))!
        if !CGRectContainsPoint(self.contentViewFrame, point) {
            self.hide()
        }
    }
    
}
