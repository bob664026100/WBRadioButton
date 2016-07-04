//
//  WBRadioButtonManager.m
//  CLRadiuButtonDemo
//
//  Created by iOS Grouper on 16/7/4.
//  Copyright © 2016年 huaxu. All rights reserved.
//

#import "WBRadioButtonManager.h"
#import "NSMutableArray+WeakReference.h"
@interface WBRadioButtonManager()
@property (nonatomic, strong) NSMutableDictionary *radioButtonDic;
@end

@implementation WBRadioButtonManager

+ (instancetype)sharedManager
{
    static WBRadioButtonManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [WBRadioButtonManager new];
    });
    return manager;
}

- (id)valueForGroup:(NSString *)group
{
    NSMutableArray *arr = self.radioButtonDic[group];
    if(!arr)
    {
        return nil;
    }
    else
    {
        __block WBRadioButton *button;
        [arr weak_enumerateObjectsUsingBlock:^(WBRadioButton *obj, NSUInteger idx, BOOL *stop) {
            if(obj.selected)
            {
                button = obj;
            }
        }];
        return button.value;
    }
}

- (void)insetRadioButton:(WBRadioButton *)button
{
    [button addTarget:self action:@selector(wbRadioButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    NSMutableArray *mutableArr = self.radioButtonDic[button.group];
    if(mutableArr)
    {
        [mutableArr weak_addObject:button];
    }
    else
    {
        mutableArr = [NSMutableArray new];
        [mutableArr weak_addObject:button];
        self.radioButtonDic[button.group] = mutableArr;
        button.selected = YES;
    }
}

- (void)wbRadioButtonClick:(WBRadioButton *)sender
{
    if(sender.selected) return;
    NSMutableArray *arr = self.radioButtonDic[sender.group];
    [arr weak_enumerateObjectsUsingBlock:^(WBRadioButton *obj, NSUInteger idx, BOOL *stop) {
        obj.selected = NO;
    }];
    sender.selected = YES;
}

- (NSMutableDictionary *)radioButtonDic
{
    if(!_radioButtonDic)
    {
        _radioButtonDic = [NSMutableDictionary new];
    }
    return _radioButtonDic;
}



@end
