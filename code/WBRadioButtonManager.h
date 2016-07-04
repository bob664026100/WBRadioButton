//
//  WBRadioButtonManager.h
//  CLRadiuButtonDemo
//
//  Created by iOS Grouper on 16/7/4.
//  Copyright © 2016年 huaxu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "WBRadioButton.h"
@interface WBRadioButtonManager : NSObject

+ (instancetype)sharedManager;

- (void)insetRadioButton:(WBRadioButton *)button;

- (id)valueForGroup:(NSString *)group;

@end
