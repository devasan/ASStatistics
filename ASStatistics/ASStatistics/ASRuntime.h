//
//  ASRuntime.h
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASRuntime : NSObject

void __swizzle__(Class c,SEL origSEL,SEL newSEL);

@end
