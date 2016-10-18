//
//  ViewController2.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //获取单例对象
        let si = SingleInstance.defaultSingleInstance()
        //给单例中的数组加一个数据
        si.datas.append("VC2")
        print(si.datas)
    }
}
