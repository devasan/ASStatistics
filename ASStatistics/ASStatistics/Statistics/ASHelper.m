//
//  ASHelper.m
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import "ASHelper.h"

@implementation ASHelper


+ (NSDictionary *)getDefaultAnalysis
{
    NSDictionary *analysisDic = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Analysis" ofType:@"plist"]];
    
    NSAssert(analysisDic, @"请检查是否添加指定plist文件");
    
    return analysisDic;
    
}

@end
