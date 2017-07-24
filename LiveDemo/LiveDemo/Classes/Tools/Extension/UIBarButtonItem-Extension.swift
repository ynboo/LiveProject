//
//  UIBarButtonItem-Extension.swift
//  LiveDemo
//
//  Created by Yang on 2017/7/24.
//  Copyright © 2017年 Mr.Yang. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    //扩展类方法
    /*
    class func creatItem (imageName : String , highImageName : String , size : CGSize)->UIBarButtonItem{
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:highImageName), for: .highlighted)
        btn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem.init(customView: btn)
    }
     */
    
    //便利构造函数
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero){
        
        //1.创建UIButton
        let btn = UIButton()
        
        //2.设置Button图片
        btn.setImage(UIImage(named:imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named:highImageName), for: .highlighted)
        }
        
        //3.设置图片尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        }
        
        //4.创建UIBarButtonItem
        self.init(customView: btn)
    }

}
