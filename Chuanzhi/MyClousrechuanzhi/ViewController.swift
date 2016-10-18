//
//  ViewController.swift
//  MyClousrechuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.frame  = CGRectMake(7, 100, 400, 50)
        textLabel.text = "AB页面协议传值"
        textLabel.textAlignment = .Center
        self.view.addSubview(textLabel)
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let svc = SubViewController()
        self.presentViewController(svc, animated: true, completion: nil)

        svc.backValueclusore = {(text:String)->Void in
            self.textLabel.text = text
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

