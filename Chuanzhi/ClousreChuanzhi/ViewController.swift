//
//  ViewController.swift
//  ClousreChuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //使用系统自带的闭包传值，这种传值方式传值会有延迟，因为是在执行完页面切换后再去进行传值
    let textLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.frame  = CGRectMake(7, 100, 400, 50)
        textLabel.text = "AB页面协议传值"
        textLabel.textAlignment = .Center
        self.view.addSubview(textLabel)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let svc = SubViewController()
        //将视图控制器本身传过去，方便回传使用
        self.presentViewController(svc, animated: true) { 
            //这个方法是在弹出下一页面后执行
            svc.vc = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

