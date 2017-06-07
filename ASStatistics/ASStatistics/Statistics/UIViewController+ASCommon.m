//
//  UIViewController+ASCommon.m
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import "UIViewController+ASCommon.h"
#import "ASRuntime.h"
#import "ASHelper.h"
#import "ASStatistics.h"

@implementation UIViewController (ASCommon)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzleViewController();
    });
}


- (void)__custom__ViewDidload
{
    [self __custom__ViewDidload];
}

- (void)__custom__viewWillAppear:(BOOL)animated
{
    [self logPageViewISEnter:YES];
    [self __custom__viewWillAppear:animated];
}

- (void)__custom__viewDidAppear:(BOOL)animated
{
    [self __custom__viewDidAppear:animated];
}

- (void)__custom__viewWillDisappear:(BOOL)animated
{
    [self logPageViewISEnter:NO];
    [self __custom__viewWillDisappear:animated];
}

- (void)__custom__viewDidDisappear:(BOOL)animated
{
    [self __custom__viewDidDisappear:animated];
}

- (void)logPageViewISEnter:(BOOL)isEnter
{
    NSString *classString = NSStringFromClass([self class]);
    
    NSDictionary *_result = [ASHelper getDefaultAnalysis][classString];
    
    NSAssert(_result, ([NSString stringWithFormat:@"请在plist文件中添加 %@ 页面统计",classString]));
    
    NSString *logViewString = isEnter?_result[@"ENTER"]:_result[@"LEAVE"];
    
    if (isEnter) {
        [ASStatistics as_beginLogPageView:logViewString];
    }else{
        [ASStatistics as_beginLogPageView:logViewString];
    }
}

@end

void swizzleViewController()
{
    __swizzle__([UIViewController class], @selector(viewDidLoad), @selector(__custom__ViewDidload));
    __swizzle__([UIViewController class], @selector(viewWillAppear:), @selector(__custom__viewWillAppear:));
    __swizzle__([UIViewController class], @selector(viewDidAppear:), @selector(__custom__viewDidAppear:));
    __swizzle__([UIViewController class], @selector(viewWillDisappear:), @selector(__custom__viewWillDisappear:));
    __swizzle__([UIViewController class], @selector(viewDidDisappear:), @selector(__custom__viewDidDisappear:));
    
}
