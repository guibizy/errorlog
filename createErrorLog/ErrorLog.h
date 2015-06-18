//
//  ErrorLog.h
//  ERRlog
//
//  Created by Nick on 15/6/18.
//  Copyright (c) 2015年 guibi.td. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ErrorLog : NSObject

void uncaughtExceptionHandler(NSException *exception);

@end
