//
//  PageTitleView.swift
//  LiveDemo
//
//  Created by Yang on 2017/7/25.
//  Copyright © 2017年 Mr.Yang. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2.0

class PageTitleView: UIView {

    //Mark:- 定义属性
    fileprivate var titles : [String]
    
    //mark:- 懒加载属性
    fileprivate lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    
    //Mark:- 自定义构造函数
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        
        super.init(frame: frame)
        
        //设置UI界面
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//Mark:- 设置UI界面
extension PageTitleView{
    fileprivate func setupUI(){
        
        //1.添加UIScrollview
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //2.添加Title对应的Label
        setupTitleLabels()
    }
    
    fileprivate func setupTitleLabels(){
        
        //0.确定label的一些frame的值
        let labelW : CGFloat = frame.width / CGFloat(titles.count)
        let labelH : CGFloat = frame.height - kScrollLineH
        let labelY : CGFloat = 0
        
        for (index, title) in titles.enumerated(){
            //1.创建UILab
            let label = UILabel()
            
            //2.设置Label的属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            //3.设置Label的frame
            let labelX : CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            //4.将label添加到scrollView中
            scrollView.addSubview(label)
        }
    }
}
