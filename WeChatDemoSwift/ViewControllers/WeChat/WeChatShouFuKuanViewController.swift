//
//  WeChatShouFuKuanViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeChatShouFuKuanViewController: UIViewController {

    @IBOutlet weak var labelShou: UILabel!
    @IBOutlet weak var labelFu: UILabel!
    
    @IBOutlet weak var btnShou: UIButton!
    @IBOutlet weak var btnFu: UIButton!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelShou.backgroundColor = kColorWeChatShouLabel;
        self.labelShou.clipsToBounds = true
        self.labelShou.layer.cornerRadius = self.labelShou.bounds.width/2;
        
        self.labelFu.backgroundColor = kColorWeChatFuLabel;
        self.labelFu.clipsToBounds = true
        self.labelFu.layer.cornerRadius = self.labelFu.bounds.width/2;
        
        let style = NSMutableParagraphStyle.init()
        style.lineSpacing = 5.0
        style.alignment = NSTextAlignment.Center
        
        let attr = NSMutableAttributedString.init(string: "收付款\n微信安全支付")
        attr.addAttributes([NSFontAttributeName:UIFont.systemFontOfSize(11.0), NSParagraphStyleAttributeName:style], range: NSMakeRange(4, 6))
        self.labelTitle.attributedText = attr
    }
    
    @IBAction func btnActionShou(sender: UIButton) {
        
    }
    
    @IBAction func btnActionFu(sender: UIButton) {
        
    }
    
    @IBAction func btnActionCancel(sender: UIButton) {
        self.dismissViewControllerAnimated(true) { () -> Void in
            
        }
    }
    

}
