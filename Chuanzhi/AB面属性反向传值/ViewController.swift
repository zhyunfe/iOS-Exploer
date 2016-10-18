//
//  ViewController.swift
//  AB面属性反向传值
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //这个标签是A页面用来显示数据的
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        label.frame = CGRectMake(0, 100, 414, 50)
        label.text = "ViewControllerA"
        label.textAlignment = .Center
        self.view.addSubview(label)


    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        let svc = SubViewController()

        //给B页面的属性赋值，这个赋值的作用是保存回传数据的目标对象
        svc.backVc = self

        self.presentViewController(svc, animated: true, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

