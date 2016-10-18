//
//  SubViewController.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()
        for i in 0..<5 {
            let button = UIButton(type: .System)
            button.setTitle("第\(i + 1)个按钮", forState: .Normal)
            button.frame = CGRectMake(7, CGFloat(150 + i * 100), 400, 100)
            button.tag = 100 + i
            button.addTarget(self, action: #selector(self.buttonAction(_:)), forControlEvents: .TouchUpInside)
            self.view.addSubview(button)
        }
    }
    func buttonAction(sender:UIButton) {
        for i in 0..<5 {
            let btn = self.view.viewWithTag(100 + i) as! UIButton
            btn.selected = false
        }
        sender.selected = true

        //使用NSUserDefaults来记录选中的按钮
        //首先获取NSUserDefaults对象，这个对象是一个单例对象
        let userDefaults = NSUserDefaults.standardUserDefaults()

        //将按钮的tag做成数据记录
        let selectedIndex = String(sender.tag)

        //开始写入
        userDefaults.setObject(selectedIndex, forKey: "selectedIndex")

        //回写文件
        userDefaults.synchronize()
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
