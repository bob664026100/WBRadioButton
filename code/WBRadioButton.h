//
//  WBRadioButton.h
//  CLRadiuButtonDemo
//
//  Created by iOS Grouper on 16/7/4.
//  Copyright © 2016 huaxu.
//  SPDX-License-Identifier: MIT
//

#import <UIKit/UIKit.h>

@interface WBRadioButton : UIButton
@property (nonatomic, strong) NSString *group;
@property (nonatomic, strong) id value;

- (instancetype)initWithGroup:(NSString *)group andValue:(id)value;

+ (id)valueForGroup:(NSString *)group;

@end
