//
//  SingleInstance.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

//创建一个单例类
class SingleInstance: NSObject {


    //在单例类中，有一个用来共享数据的数组
    var datas = [String]()
    //创建一个静态或者全局变量，保存当前单例实例值
    private static let singleInstance = SingleInstance()
    //私有化构造方法
    private override init() {
        //给数组加一个原始数据
        datas.append("SI")
    }

    //提供一个公开的用来去获取单例的方法
    class func defaultSingleInstance() ->SingleInstance {
        //返回初始化好的静态变量值
        return singleInstance
    }
}
