//
//  Constants.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/16.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

let ScreenWidth = (UIScreen.mainScreen().bounds.size.width)
let ScreenHeight = (UIScreen.mainScreen().bounds.size.height)

let kColorStyle = UIColor.init(red: 9.0/255, green: 187.0/255, blue: 7.0/255, alpha: 1.0)
let kColorNavigationBar = UIColor.init(red: 45.0/255, green: 44.0/255, blue: 50.0/255, alpha: 1.0)

let kColorWeChatShouLabel = UIColor.init(red: 0xe1/255.0, green: 0xc0/255.0, blue: 0x1c/255.0, alpha: 1.0)
let kColorWeChatFuLabel = UIColor.init(red: 0x09/255.0, green: 0xbb/255.0, blue: 0x07/255.0, alpha: 1.0)

let kContentInsetGroupStaticCell = UIEdgeInsetsMake(-18, 0, 0, 0)


//        #define kColorStyle [UIColor colorWithRed:9.0/255 green:187.0/255 blue:7.0/255 alpha:1]
//        #define kColorNavigationBar [UIColor colorWithRed:45.0/255 green:44.0/255 blue:50.0/255 alpha:1]
//        //e1c01c
//        //09bb07
//
//        // 从16进制得到颜色值 0x222222
//        #define kCyColorFromHexA(hex, a) [UIColor colorWithRed:(((hex & 0xff0000) >> 16) / 255.0f) green:(((hex & 0x00ff00) >> 8) / 255.0f) blue:((hex & 0x0000ff) / 255.0f) alpha:(a)]
//        #define kCyColorFromHex(hex) [UIColor colorWithRed:(((hex & 0xff0000) >> 16) / 255.0f) green:(((hex & 0x00ff00) >> 8) / 255.0f) blue:((hex & 0x0000ff) / 255.0f) alpha:(1.0f)]
//
//
//        #define kColorWeChatPopSelect kCyColorFromHex(0x404040)   // 微信主页弹出框item选中时的颜色 49484b
//        #define kColorWeChatShouLabel kCyColorFromHex(0xe1c01c)   // 微信 我要收款 的颜色
//        #define kColorWeChatFuLabel kCyColorFromHex(0x09bb07)   // 微信 向商户付款 的颜色
//
//        //#define kColorStyle kCyColorFromHex(0x54c252)       // 主题颜色

class Constants: NSObject {

}
