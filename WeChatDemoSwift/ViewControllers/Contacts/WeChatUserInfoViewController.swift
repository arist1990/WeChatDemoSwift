//
//  WeChatUserInfoViewController.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeChatUserInfoViewController: BaseViewController {

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var ivImagePhoto: UIImageView!
    @IBOutlet weak var ivImageQR: UIImageView!
    
    var isPrensented:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "我的二维码"
        
        let item = UIBarButtonItem.init(image: UIImage.init(named: "barbuttonicon_more"), style: UIBarButtonItemStyle.Done, target: self, action: "rightEvent")
        self.navigationItem.rightBarButtonItem = item
        
        if self.isPrensented {
            self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        }
        
        self.viewContent.clipsToBounds = true
        self.viewContent.layer.cornerRadius = 5
        
        self.ivImagePhoto.clipsToBounds = true
        self.ivImagePhoto.layer.cornerRadius = 5
        
        self.ivImageQR.image = ImageUtil.createNonInterpolatedUIImageFormCIImage(ImageUtil.createQRForString("http://www.baidu.com"), size: self.ivImageQR.bounds.size.width*(UIScreen.mainScreen().scale));
        
    }
    
    func rightEvent(){
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
