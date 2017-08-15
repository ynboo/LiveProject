//
//  UIColor-Extension.swift
//  LiveDemo
//
//  Created by Yang on 2017/8/16.
//  Copyright © 2017年 Mr.Yang. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(r : CGFloat, g: CGFloat, b : CGFloat) {
        self.init(red: r/255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
}
