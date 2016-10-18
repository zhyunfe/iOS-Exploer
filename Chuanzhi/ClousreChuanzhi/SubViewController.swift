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
    //接收一个属性
    var  vc: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()

        tf.frame = CGRectMake(7, 100, 400, 50)
        tf.borderStyle = .RoundedRect
        tf.layer.borderWidth = 1
        self.view.addSubview(tf)


    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.dismissViewControllerAnimated(true) {
            //利用这个闭包来回传数据
            self.vc!.textLabel.text = self.tf.text

        }
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
