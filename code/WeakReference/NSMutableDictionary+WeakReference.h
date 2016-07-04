//
//  NSMutableDictionary+WeakReference.h
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016年 wenbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (WeakReference)

/**
 *  存弱引用2个方法
 *
 */
- (void)weak_setObject:(id)anObject forKey:(NSString *)aKey;
- (void)weak_setObjectWithDictionary:(NSDictionary *)dic;

/**
 *  取弱引用对象
 */
- (id)weak_getObjectForKey:(NSString *)key;
/**
 *  弱引用迭代器遍历1
 */
- (void)weak_enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, BOOL *stop))block;
/**
 *  弱引用迭代器遍历2
 */
- (void)weak_enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id obj, BOOL *stop))block;

@end
