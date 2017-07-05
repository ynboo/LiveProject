//
//  MainViewController.swift
//  LiveDemo
//
//  Created by Yang on 2017/7/4.
//  Copyright © 2017年 Mr.Yang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildVC("home")
        addChildVC("Live")
        addChildVC("Follow")
        addChildVC("Profile")
    }
    
    
    fileprivate func addChildVC(_ stroyName : String){
        //1.通过StoryBoard来获取控制器
        let childVC = UIStoryboard.init(name: stroyName, bundle: nil).instantiateInitialViewController()
        
        //2.将ChildVc做为子控制器
        addChildViewController(childVC!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
