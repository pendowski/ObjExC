//
//  NSObject+ObjExC.h
//  ObjExC
//
//  Created by Jarosław Pendowski on 17/04/14.
//  Copyright (c) 2014 Jarosław Pendowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ObjExC)

- (id)as:(Class)cls;
- (id)as:(Class)cls strict:(BOOL)strict;
- (id)asStrict:(Class)cls;

- (NSString *)asString;
- (NSNumber *)asNumber;
- (NSArray *)asArray;
- (NSDictionary *)asDictionary;
- (NSSet *)asSet;

@end
