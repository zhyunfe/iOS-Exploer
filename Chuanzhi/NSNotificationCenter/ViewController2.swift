//
//  ViewController2.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension ViewController2{
    //成为观察者的方法
    func becomeObserver(){
        //先去获取通知中心的单例
        let notificationCenter = NSNotificationCenter.defaultCenter()
        //向通知中心去加入观察者
        notificationCenter.addObserver(self, selector: #selector(ViewController2.avg), name: "又有新数据啦!", object: nil)
    }

    //观察者的响应方法
    func avg(){
        let datas = ((UIApplication.sharedApplication().delegate)as!AppDelegate).datas
        var sum = 0
        for i in datas{
            sum += i
        }
        print("VC2计算求平均值得：\(sum / datas.count)")
    }

}
