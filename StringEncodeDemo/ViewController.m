//
//  ViewController.m
//  StringEncodeDemo
//
//  Created by chen on 2017/8/3.
//  Copyright © 2017年 RQDragBallView. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Pro.h"
#import "obfuscate.py"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *token = [self fix];
    NSString *hello = @"fxxk";
}

@end
