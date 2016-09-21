//
//  ViewController.m
//  UIButtonApply
//
//  Created by zhyunfe on 16/9/21.
//  Copyright © 2016年 zhyunfe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn1Click:(UIButton *)sender {
    //将被点击的按钮状态设置为false，让全局中存储的之前的btn的状态设置为true，然后将本次点击的btn存储到全局的button中，这样就保证了全局的button存放的一直是不可用的btn，当点击另外一个按钮的时候，释放不可用的btn
    _button.enabled = true;
    sender.enabled = false;
    _button = sender;

}

- (IBAction)btn2Click:(UIButton *)sender {
    _button.enabled = true;
    sender.enabled = false;
    _button = sender;
}
@end
