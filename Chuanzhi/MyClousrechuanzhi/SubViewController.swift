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

    //声明一个闭包
    var backValueclusore: ((text:String) ->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()

        tf.frame = CGRectMake(7, 100, 400, 50)
        tf.borderStyle = .RoundedRect
        tf.layer.borderWidth = 1
        self.view.addSubview(tf)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //直接执行闭包
        self.backValueclusore!(text:self.tf.text!)
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
