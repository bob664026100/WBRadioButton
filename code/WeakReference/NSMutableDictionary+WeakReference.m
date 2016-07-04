//
//  NSMutableDictionary+WeakReference.m
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016年 wenbo. All rights reserved.
//

#import "NSMutableDictionary+WeakReference.h"
#import "WeakReference.h"

@implementation NSMutableDictionary (WeakReference)


- (void)weak_setObject:(id)anObject forKey:(NSString *)aKey
{
    [self setObject:makeWeakReference(anObject) forKey:aKey];
}
- (void)weak_setObjectWithDictionary:(NSDictionary *)dic
{
    for (NSString *key in dic.allKeys) {
        [self setObject:makeWeakReference(dic[key]) forKey:key];
    }
}
- (id)weak_getObjectForKey:(NSString *)key
{
    return weakReferenceNonretainedObjectValue(self[key]);
}

- (void)weak_enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, BOOL *stop))block
{
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(key,weakRef,stop);
    }];
}
- (void)weak_enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id obj, BOOL *stop))block
{
    [self enumerateKeysAndObjectsWithOptions:opts usingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        id weakRef = weakReferenceNonretainedObjectValue(obj);
        block(key,weakRef,stop);
    }];
}

@end
