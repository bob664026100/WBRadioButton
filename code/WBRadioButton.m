//
//  WBRadioButton.m
//  CLRadiuButtonDemo
//
//  Created by iOS Grouper on 16/7/4.
//  Copyright © 2016年 huaxu. All rights reserved.
//

#import "WBRadioButton.h"
#import "WBRadioButtonManager.h"
@implementation WBRadioButton

- (instancetype)initWithGroup:(NSString *)group andValue:(id)value
{
    if(self = [super init])
    {
        self.group = group;
        self.value = value;
        [[WBRadioButtonManager sharedManager] insetRadioButton:self];
    }
    return self;
}

+ (id)valueForGroup:(NSString *)group
{
    return [[WBRadioButtonManager sharedManager] valueForGroup:group];
}

- (void)dealloc
{
    NSLog(@"---dealloc---");
}

@end
