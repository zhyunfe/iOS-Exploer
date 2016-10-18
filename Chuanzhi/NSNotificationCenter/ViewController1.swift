//
//  ViewController1.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension ViewController1{
    //成为观察者的方法
    func becomeObserver(){
        //先去获取通知中心的单例
        let notificationCenter = NSNotificationCenter.defaultCenter()
        //向通知中心去加入观察者
        notificationCenter.addObserver(self, selector: #selector(ViewController1.sum), name: "又有新数据啦!", object: nil)
    }
    //观察者的响应方法
    func sum(){
        let datas = ((UIApplication.sharedApplication().delegate)as!AppDelegate).datas
        var sum = 0
        for i in datas{
            sum += i
        }
        print("VC1计算求和得：\(sum)")
    }

}
