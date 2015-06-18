//
//  ErrorLog.m
//  ERRlog
//
//  Created by Nick on 15/6/18.
//  Copyright (c) 2015年 guibi.td. All rights reserved.
//

#import "ErrorLog.h"

@implementation ErrorLog

void uncaughtExceptionHandler(NSException *exception){
    NSArray *stackArray = [exception callStackSymbols];
    NSString *reason = [exception reason];
    NSString *name = [exception name];
    NSString *exceptionInfo = [NSString stringWithFormat:@"==崩溃原因==：%@\n ==崩溃名称==：%@/n==崩溃详情==：%@",reason,name,stackArray];
    NSMutableArray *logArr = [NSMutableArray arrayWithArray:stackArray];
    [logArr insertObject:reason atIndex:0];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *applicationSupportDirectory = [paths objectAtIndex:0];
    
    NSDate *date = [NSDate date];
    
    NSString *format = @"yyyy-MM-dd-hh-mm-ss";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSString *dateString = [dateFormatter stringFromDate:date];
    
    [exceptionInfo writeToFile:[NSString stringWithFormat:@"%@/errorReport%@.log",applicationSupportDirectory,dateString] atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

@end
