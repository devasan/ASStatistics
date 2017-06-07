//
//  ASStatistics.m
//  ASStatistics
//
//  Created by asan on 2017/6/7.
//  Copyright © 2017年 ASAN. All rights reserved.
//

#import "ASStatistics.h"

@implementation ASStatistics

+ (void)as_eventID:(NSString *)eventID
{
    [ASStatistics as_eventID:eventID label:@""];
}

+ (void)as_eventID:(NSString *)eventID label:(NSString *)label
{
//    把行为事件存入sqlite，数量到达AS_REPORT_COUNT通过HTTP发送到服务端并清空之前表内数据
    
//    BOOL shouldAutoReport = NO;
//    
//    ASDataStorage *storage = [[ASDataStorage alloc] initDatabaseWithName:AS_DATABASE];
//    [storage createTableWithName:AS_TABLE];
//    
//    [storage putObject:params withID:eventID intotable:AS_TABLE];
//    
//    NSArray *queryUser = [storage getAllResultObjectFromTable:AS_TABLE];
//    
//    shouldAutoReport = AS_REPORT_COUNT == [storage getAllItemsFromTable:AS_TABLE].count;
//    
//    if (shouldAutoReport) {
//        //发送
//        [ASStatistics as_sendReportWithData:queryUser];
//    }
    
    NSLog(@"EVENTID: %@ 已记录",eventID);
    

}

+ (void)as_beginLogPageView:(NSString *)pageName
{
    NSLog(@"已经进入: %@ 页面",pageName);
}

+ (void)as_endLogPageView:(NSString *)pageName
{
    NSLog(@"已经离开: %@ 页面",pageName);
}



@end
