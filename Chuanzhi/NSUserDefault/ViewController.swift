//
//  ViewController.swift
//  NSUserDefault
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //声明一个label
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        //输出家目录地址
        print(NSHomeDirectory())
        //NSUserDefaults是一个系统对plist文件封装好的一个类，在HomeDirectory/Library/preferences/XXX.userdefaults.plist

        //可以通过类来进行对这个文件进行读写
        self.view.backgroundColor = UIColor.redColor()

        label.frame = CGRectMake(0, 100, 414, 50)
        label.textAlignment = .Center
        self.view.addSubview(label)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let svc = SubViewController()
        self.presentViewController(svc, animated: true, completion: nil)
    }
    override func viewWillAppear(animated: Bool) {

        //获取NSUserDefaults
        let userDefaults = NSUserDefaults.standardUserDefaults()
        //取出数据
        let si = userDefaults.objectForKey("selectedIndex")
        let tag = si?.intValue

        //直接修改label的值
        self.label.text = "第\(tag! - 99)个按钮是选中转态"

    }
}

