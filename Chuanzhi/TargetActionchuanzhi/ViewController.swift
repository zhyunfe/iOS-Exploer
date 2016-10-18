//
//  ViewController.swift
//  TargetActionchuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.frame  = CGRectMake(7, 100, 400, 50)
        textLabel.text = "A页面原始数据"
        textLabel.textAlignment = .Center
        self.view.addSubview(textLabel)

    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let svc = SubViewController()

        //通过正向传值，来告诉B页面回调时需要用到的参数
        svc.target = self
        //NSSelectorFromString 方法是将一个字符串方法转换成真正的方法名
        svc.action = NSSelectorFromString("backValue:")
        self.presentViewController(svc, animated: true, completion: nil)
    }
    //定义一个用来去回传数据的方法
    func backValue(string:String) {
        //通过传进来的参数，给label赋值
        textLabel.text = string
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

