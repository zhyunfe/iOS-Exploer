//
//  ViewController.h
//  UIButtonApply
//
//  Created by zhyunfe on 16/9/21.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 //MARK: -Navigation
 //在UI中展示两个Button，btn1和btn2，
 //当点击一个btn1的时候，btn1.enable = false，btn2.enable = true
 //当点击btn2的时候，btn2.enable = false，btn1.enable = true
 */

@interface ViewController : UIViewController
{
    //创建一个全局的button来存放不可用btn
    UIButton *_button;
}
- (IBAction)btn1Click:(UIButton *)sender;
- (IBAction)btn2Click:(UIButton *)sender;

@end

