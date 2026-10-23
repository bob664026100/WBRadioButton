//
//  NSMutableArray+WeakReference.m
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016 wenbo.
//  SPDX-License-Identifier: MIT
//

#import "NSMutableArray+WeakReference.h"
#import "WeakReference.h"

@implementation NSMutableArray (WeakReference)



- (void)weak_addObject:(id)anObject
{
    [self addObject:makeWeakReference(anObject)];
    
}
- (void)weak_insertObject:(id)anObject atIndex:(NSUInteger)index
{
    [self insertObject:makeWeakReference(anObject) atIndex:index];
}
- (void)weak_addObjectsFromArray:(NSArray<id> *)otherArray
{
    for (id objc in otherArray) {
        [self weak_addObject:objc];
    }
}

- (id)weak_getObjectForIndex:(NSUInteger)index
{
    return weakReferenceNonretainedObjectValue(self[index]);
}

- (void)weak_enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block
{
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(weakRef,idx,stop);
    }];
}
- (void)weak_enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block
{
    [self enumerateObjectsWithOptions:opts usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(weakRef,idx,stop);
    }];
}
- (void)weak_enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block
{
    [self enumerateObjectsAtIndexes:s options:opts usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(weakRef,idx,stop);
    }];
}




@end
