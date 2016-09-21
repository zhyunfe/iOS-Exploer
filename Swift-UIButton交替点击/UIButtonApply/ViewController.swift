//
//  ViewController.swift
//  UIButtonApply
//
//  Created by zhyunfe on 16/9/21.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

/*
 //MARK: -Navigation
 //在UI中展示两个Button，btn1和btn2，
 //当点击一个btn1的时候，btn1.enable = false，btn2.enable = true
 //当点击btn2的时候，btn2.enable = false，btn1.enable = true
 */
import UIKit

class ViewController: UIViewController {

    //创建一个全局的button，存储不可用状态下的btn
    var button:UIButton = UIButton.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //btn1的点击事件
    @IBAction func btnClick(sender: UIButton) {
        //将全局的button状态设置为可用，btn1的状态设置为不可用
        self.button.enabled = true
        sender.enabled = false

        //全局的button存储不可用的btn1
        self.button = sender
        print("btn1被点击，不可用")
    }
    //btn2的点击事件
    @IBAction func btn2Click(sender: UIButton) {
        //全局的button存储不可用的btn1状态设置为打开，btn2的状态设置为不可用
        self.button.enabled = true
        sender.enabled = false

        //将全局中的button存储为btn2
        self.button = sender
        print("btn2被点击，不可用")
    }
}

