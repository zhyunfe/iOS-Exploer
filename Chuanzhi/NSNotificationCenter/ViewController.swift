//
//  ViewController.swift
//  NSNotificationCenter
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //在这里，向数据源中去增加数据，并发送通知

        let num = arc4random_uniform(100)

        //获取数据
        ((UIApplication.sharedApplication().delegate) as! AppDelegate).datas.append(Int(num))

        //获取通知中心
        let nc = NSNotificationCenter.defaultCenter()
        //发送通知
        nc.postNotificationName("又有新数据啦!", object: nil)


    }
}

