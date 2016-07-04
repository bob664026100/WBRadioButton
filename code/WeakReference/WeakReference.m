//
//  WeakReference.m
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016年 wenbo. All rights reserved.
//

#import "WeakReference.h"

WeakReference makeWeakReference(id object) {
    __weak id weakref = object;
    return ^{
        return weakref;
    };
}

id weakReferenceNonretainedObjectValue(WeakReference ref) {
    if (ref == nil)
    {
        return nil;
    }
    else
    {
        return ref ();
    }
    
}
