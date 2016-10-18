//
//  SubViewController.swift
//  Chuanzhi
//
//  Created by zhyunfe on 16/9/27.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {


    var vc: ViewController?

    @IBOutlet weak var lSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        lSwitch.addTarget(self, action: #selector(self.swAction), forControlEvents: .ValueChanged)
    }
    func swAction() {
        //判断状态
        if lSwitch.on {
            //将状态值回传给A页面
            self.vc?.lsStatiusLabel.text = "ON"
        } else {
            self.vc?.lsStatiusLabel.text = "OFF"
        }
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
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
