//
//  WeakReference.h
//  WeakArrDic
//
//  Created by 廖文博 on 16/4/29.
//  Copyright © 2016 wenbo.
//  SPDX-License-Identifier: MIT
//

#import <Foundation/Foundation.h>

typedef id (^WeakReference)(void);



WeakReference makeWeakReference(id object);

id weakReferenceNonretainedObjectValue(WeakReference ref);
