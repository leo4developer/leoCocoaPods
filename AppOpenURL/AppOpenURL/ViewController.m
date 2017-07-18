//
//  ViewController.m
//  AppOpenURL
//
//  Created by leo on 2017/7/10.
//  Copyright © 2017年 leo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)openCMPFKM:(id)sender {
    NSString *url = @"cmpay://AccountInfo/fetchDFZVC";
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:url]]) {
        //打开url
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    }else {
        //给个提示或者做点别的事情
        NSLog(@"U四不四洒，没安装WXApp，怎么打开啊！");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
