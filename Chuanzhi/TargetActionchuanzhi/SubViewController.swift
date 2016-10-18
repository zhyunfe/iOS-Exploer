//
//  SubViewController.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    let tf = UITextField()
    //设置两个属性接收传值目标和方法
    //用来去接收传值的目标是任意目标
    var target: AnyObject?

    //用来去接收传值的方法
    var action: Selector?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()

        tf.frame = CGRectMake(7, 100, 400, 50)
        tf.borderStyle = .RoundedRect
        tf.layer.borderWidth = 1
        self.view.addSubview(tf)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //B页面根部不需要考虑传值的目标和方法具体是谁，直接去调用自己的属性即可
        //这种方式称为回调，让目标调用目标方法，参数为我传入的TextField的值
        self.target?.performSelector(self.action!, withObject: self.tf.text )
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
