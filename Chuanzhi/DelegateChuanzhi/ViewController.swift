//
//  ViewController.swift
//  DelegateChuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    let textLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.frame  = CGRectMake(7, 100, 400, 50)
        textLabel.text = "AB页面协议传值"
        textLabel.textAlignment = .Center
        self.view.addSubview(textLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let svc = SubViewController()
        self.presentViewController(svc, animated: true, completion: nil)

        //设置代理
        svc.delegate = self
    }

}
extension ViewController:BackValueProtocol {
    func backValue(text: String, color: UIColor) {
        textLabel.text = text
        self.view.backgroundColor = color
    }
}



