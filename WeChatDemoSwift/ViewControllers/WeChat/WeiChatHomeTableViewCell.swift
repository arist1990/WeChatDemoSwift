//
//  WeiChatHomeTableViewCell.swift
//  WeChatDemoSwift
//
//  Created by ARIST on 16/1/19.
//  Copyright © 2016年 ARIST. All rights reserved.
//

import UIKit

class WeiChatHomeTableViewCell: UITableViewCell {

    let ivImage:UIImageView = UIImageView.init()
    let viewDot:UILabel = UILabel.init()
    let labelTime:UILabel = UILabel.init()
    let labelText:UILabel = UILabel.init()
    let labelDetail:UILabel = UILabel.init()
    
    var data = Dictionary<String, String>()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        
        if ivImage.superview == nil {
            ivImage.frame = CGRectMake(10, 10, 44, 44);
            ivImage.clipsToBounds = true
            ivImage.layer.cornerRadius = 5.0
            self.contentView.addSubview(ivImage)
            
            labelText.frame = CGRectMake(64, 10, ScreenWidth-64-60, 20)
            labelText.font = UIFont.systemFontOfSize(14)
            labelText.textColor = UIColor.blackColor()
            self.contentView.addSubview(labelText)
            
            labelDetail.frame = CGRectMake(64, self.bounds.size.height-10-20, ScreenWidth-64-10, 20)
            labelDetail.font = UIFont.systemFontOfSize(13)
            labelDetail.textColor = UIColor.darkGrayColor()
            self.contentView.addSubview(labelDetail)
            
            labelTime.frame = CGRectMake(ScreenWidth-10-50, 5, 50, 20)
            labelTime.font = UIFont.systemFontOfSize(11)
            labelTime.textColor = UIColor.lightGrayColor()
            labelTime.textAlignment = NSTextAlignment.Right
            self.contentView.addSubview(labelTime)
            
        }
        
        ivImage.image = UIImage.init(named: data["image"]!)
        labelText.text = data["name"]
        labelDetail.text = data["summary"]
        labelTime.text = self.getTimeString(data["time"]!)
        
        
    }
    
    let arrayWeek = ["星期六", "星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天"]
    func getTimeString(time: String) -> String{
        
        let formate = NSDateFormatter.init()
        formate.dateFormat = "yyyy年MM月dd日HH:mm:ss"
        
        let date = formate.dateFromString(time)
        let currentDate = NSDate.init()
        
        formate.dateFormat = "yyyy年MM月dd日"
        let timeToday = formate.stringFromDate(currentDate)
        let dateTodayStart = formate.dateFromString(timeToday)
        
        let dateYesterDayStart = dateTodayStart?.dateByAddingTimeInterval(-60*60*24)
        
        let dateOneWeakStart = dateTodayStart?.dateByAddingTimeInterval(-60*60*24*7)
        
        let cal = NSCalendar.currentCalendar()
        
        var result = ""
        
        if date?.timeIntervalSince1970 < dateOneWeakStart?.timeIntervalSince1970 {
            formate.dateFormat = "yy/MM/dd"
            result = formate.stringFromDate(date!)
        } else if date?.timeIntervalSince1970 < dateYesterDayStart?.timeIntervalSince1970 {
            let comps = cal.components(NSCalendarUnit.Weekday, fromDate: date!)
            let dayOfWeek = comps.weekday
            if dayOfWeek >= 0 && dayOfWeek < arrayWeek.count {
                result = arrayWeek[dayOfWeek]
            } else {
                result = arrayWeek[0]
            }
            
        } else if date?.timeIntervalSince1970 < dateTodayStart?.timeIntervalSince1970 {
            result = "昨天"
        } else {
            formate.dateFormat = "HH:mm"
            result = formate.stringFromDate(date!)
        }
        
        return result
    }

}




