//
//  SubViewController.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/10/18.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    //在B页面里，声明一个用来去接收回传对象的变量
    var backVc : ViewController?


    let textField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.cyanColor()
        textField.frame = CGRectMake(0, 100, 414, 50)
        textField.borderStyle = .RoundedRect
        self.view.addSubview(textField)

    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //在页面消失之前，将数据传回
        self.backVc?.label.text = self.textField.text


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
