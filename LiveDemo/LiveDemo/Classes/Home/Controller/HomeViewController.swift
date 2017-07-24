//
//  HomeViewController.swift
//  LiveDemo
//
//  Created by Yang on 2017/7/24.
//  Copyright © 2017年 Mr.Yang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置UI界面
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//mark:-设置UI界面
extension HomeViewController{
    fileprivate func setupUI(){
        // 1.设置导航栏
        setupNavigationBar()
    }
    
    fileprivate func setupNavigationBar(){
        // 1.设置左侧Item
        /*//基础用法
        let btn = UIButton()
        btn.setImage(UIImage.init(named: "logo"), for: UIControlState.normal)
        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: btn)
        
        // 2.设置右侧Item
        let size = CGSize.init(width: 40, height: 40)
        
        let historyBtn = UIButton()
        historyBtn.setImage(UIImage.init(named: "image_my_history"), for: .normal)
        historyBtn.setImage(UIImage.init(named: "Image_my_history_click"), for: .highlighted)
        historyBtn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        let histroyItem = UIBarButtonItem.init(customView: historyBtn)
        
        
        let searchBtn = UIButton()
        searchBtn.setImage(UIImage.init(named: "btn_search"), for: .normal)
        searchBtn.setImage(UIImage.init(named: "btn_search_clicked"), for: .highlighted)
        searchBtn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        let searchItem = UIBarButtonItem.init(customView: searchBtn)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(UIImage.init(named: "Image_scan"), for: .normal)
        qrcodeBtn.setImage(UIImage.init(named: "Image_scan_click"), for: .highlighted)
        qrcodeBtn.frame = CGRect.init(origin: CGPoint.zero, size: size)
        let qrcodeItem = UIBarButtonItem.init(customView: qrcodeBtn)
         */
        
        //高级用法
        //1.设置左侧Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")

        //2.设置右侧Item
        let size = CGSize.init(width: 40, height: 40)
        let histroyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [histroyItem, searchItem, qrcodeItem]
    }
}
