//
//  NSMutableArray+WeakReference.h
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016年 wenbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (WeakReference)


/**
 *  三个存弱引用方法
 */
- (void)weak_addObject:(id)anObject;
- (void)weak_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)weak_addObjectsFromArray:(NSArray<id> *)otherArray;

/**
 *  取对象
 */
- (id)weak_getObjectForIndex:(NSUInteger)index;

/**
 *  弱引用迭代器遍历1
 */

- (void)weak_enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
/**
 *  弱引用迭代器遍历2
 */
- (void)weak_enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
/**
 *  弱引用迭代器遍历3
 */
- (void)weak_enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
@end
