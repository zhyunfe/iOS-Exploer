//
//  ViewController.swift
//  使用系统的单例去传值
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //用来去计数的一个变量
    var n = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //UIApplication 是一个单例类
        //AppDelegate并不是单例类，但是共享的数据放到了这个类里

        //获取单例
        let application = UIApplication.sharedApplication()

        //通过这个单例获取AppDelegate这个对象
        let appDelegate = application.delegate as! AppDelegate

        //通过这个AppDelegate来操作共享的datas数组
        appDelegate.datas.append("VC-\(n + 1)")
        print(appDelegate.datas)
    }
    



}

