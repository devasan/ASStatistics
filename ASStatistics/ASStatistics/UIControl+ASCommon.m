//
//  UIControl+ASCommon.m
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import "UIControl+ASCommon.h"
#import "ASRuntime.h"
#import "ASStatistics.h"
#import "ASHelper.h"

@implementation UIControl (ASCommon)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        swizzleControlAction();
    });
}

- (void)__custom__sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    
    NSString *targetName = NSStringFromClass([target class]);
    NSString *actionString = NSStringFromSelector(action);
    
    NSString *eventID = nil;
    
    id _value = [ASHelper getDefaultAnalysis][targetName][actionString];
    
    if ([_value isKindOfClass:[NSString class]]) {
        eventID = _value;
    }else if ([_value isKindOfClass:[NSDictionary class]]){
        eventID = [_value objectForKey:[NSString stringWithFormat:@"%ld",self.tag]];
    }

    if (eventID) {
        [ASStatistics as_eventID:eventID];
    }
    

    [self __custom__sendAction:action to:target forEvent:event];
}

@end

void swizzleControlAction()
{
    __swizzle__([UIControl class], @selector(sendAction:to:forEvent:), @selector(__custom__sendAction:to:forEvent:));
}
