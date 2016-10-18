//
//  ViewController.swift
//  自定义单例
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //获取单例对象
        let si = SingleInstance.defaultSingleInstance()
        //给单例中的数组加一个数据
        si.datas.append("VC")
        print(si.datas)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

