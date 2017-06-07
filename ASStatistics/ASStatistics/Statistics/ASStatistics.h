//
//  ASStatistics.h
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASStatistics : NSObject

+ (void)as_eventID:(NSString *)eventID;

+ (void)as_eventID:(NSString *)eventID label:(NSString *)label;

+ (void)as_beginLogPageView:(NSString *)pageName;

+ (void)as_endLogPageView:(NSString *)pageName;


@end
