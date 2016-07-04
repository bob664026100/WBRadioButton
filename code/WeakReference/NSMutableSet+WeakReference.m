//
//  NSMutableSet+WeakReference.m
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/30.
//  Copyright © 2016年 wenbo. All rights reserved.
//

#import "NSMutableSet+WeakReference.h"
#import "WeakReference.h"
@implementation NSMutableSet (WeakReference)
- (void)weak_addObject:(id)object
{
    [self addObject:makeWeakReference(object)];
}

- (void)weak_enumerateObjectsUsingBlock:(void (^)(id obj, BOOL *stop))block
{
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(weakRef,stop);
    }];
}

- (void)weak_enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, BOOL *stop))block
{
    [self enumerateObjectsWithOptions:opts usingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(weakRef,stop);
    }];
}
@end
