//
//  ImageUtil.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class ImageUtil: NSObject {

    static func createNonInterpolatedUIImageFormCIImage(image:CIImage, size:CGFloat) -> UIImage {
        
        let extent = CGRectIntegral(image.extent)
        let scale = min(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent))
        
        let width = CGRectGetWidth(extent) * scale
        let height = CGRectGetHeight(extent) * scale
        
        let cs = CGColorSpaceCreateDeviceGray()
        let bitmapRef = CGBitmapContextCreate(nil, Int(width), Int(height), 8, 0, cs, 0)    // kCGImageAlphaNone
        let context = CIContext.init()
        let bitmapImage = context.createCGImage(image, fromRect: extent)
        CGContextSetInterpolationQuality(bitmapRef, CGInterpolationQuality.None)  // kCGInterpolationNone
        CGContextScaleCTM(bitmapRef, scale, scale)
        CGContextDrawImage(bitmapRef, extent, bitmapImage)
        
        let scaledImage = CGBitmapContextCreateImage(bitmapRef)
        
        // 不加这两句释放的代码真的没事吗？
//        CGContextRelease(bitmapRef);
//        CGImageRelease(bitmapImage);
        
        return UIImage.init(CGImage: scaledImage!)
        
    }
    
    static func createQRForString(qrString:String) -> CIImage {
        let stringData = qrString.dataUsingEncoding(NSUTF8StringEncoding)
        
        let qrFilter = CIFilter.init(name: "CIQRCodeGenerator")
        
        qrFilter?.setValue(stringData, forKey: "inputMessage")
        qrFilter?.setValue("M", forKey: "inputCorrectionLevel")
        
        return (qrFilter?.outputImage)!
    }
    
    
}
