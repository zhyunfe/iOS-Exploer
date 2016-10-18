//
//  ViewController1.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    var n = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //UIApplication 是一个单例类
        //AppDelegate并不是单例类，但是共享的数据放到了这个类里

        //获取单例
        let application = UIApplication.sharedApplication()

        //通过这个单例获取AppDelegate这个对象
        let appDelegate = application.delegate as! AppDelegate

        //铜鼓这个APPDelegate来操作共享的datas数组
        appDelegate.datas.append("VC1-\(n + 1)")
        print(appDelegate.datas)
    }
}
