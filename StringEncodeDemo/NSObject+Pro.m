//
//  NSObject+Pro.m
//  StringEncodeDemo
//
//  Created by chen on 2017/8/3.
//  Copyright © 2017年 RQDragBallView. All rights reserved.
//

#import "NSObject+Pro.h"

@implementation NSObject (Pro)

#define SCK 0xBB
- (NSString *)sk_stochasticString {
    NSString *string = @"ssssss";
    unsigned char str[] = {
        (SCK ^ 't'),
        (SCK ^ 'o'),
        (SCK ^ 'k'),
        (SCK ^ 'e'),
        (SCK ^ 'n'),
        (SCK ^ '\0')};
    unsigned char *p = str;
    while(((*p) ^=  SCK) != '\0')  p++;
    static unsigned char result[7];
    memcpy(result, str, 7);
    return [NSString stringWithFormat:@"%s",result];
}

@end
