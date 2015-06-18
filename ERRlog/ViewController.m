//
//  ViewController.m
//  ERRlog
//
//  Created by Nick on 15/6/18.
//  Copyright (c) 2015年 guibi.td. All rights reserved.
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
- (IBAction)bengkui:(id)sender {
    [self performSelector:@selector(thisMthodDoesNotExist) withObject:nil];
//
    //常见异常2---键值对引用nil
    //    [[NSMutableDictionary dictionary] setObject:nil forKey:@"nil"];
    
    //常见异常3---数组越界
//    [[NSArray array] objectAtIndex:1];
    
    //常见异常4---memory warning 级别3以上
    //    [self performSelector:@selector(killMemory) withObject:nil];
}

@end
