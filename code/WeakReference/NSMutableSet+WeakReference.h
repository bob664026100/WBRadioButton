//
//  NSMutableSet+WeakReference.h
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/30.
//  Copyright © 2016 wenbo.
//  SPDX-License-Identifier: MIT
//

#import <Foundation/Foundation.h>

@interface NSMutableSet (WeakReference)

- (void)weak_addObject:(id)object;


/**
 *  弱引用迭代器遍历1
 */
- (void)weak_enumerateObjectsUsingBlock:(void (^)(id obj, BOOL *stop))block;
/**
 *  弱引用迭代器遍历2
 */
- (void)weak_enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, BOOL *stop))block;

@end
