//
//  ViewController.m
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
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

- (IBAction)testButtonAction:(UIButton *)sender {
    
    NSLog(@"TEST1 Clicked");
        
}
- (IBAction)TestAction:(UIButton *)sender {
    
    if (10010 == sender.tag) {
        NSLog(@"TEST2 Clicked");
    }else if (10011 == sender.tag){
        NSLog(@"TEST3 Clicked");
    }
    
}

@end
