//
//  NSObject+ObjExC.h
//  ObjExC
//
//  Created by Jarosław Pendowski on 17/04/14.
//  Copyright (c) 2014 Jarosław Pendowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ObjExC)

- (id)ex_as:(Class)cls;
- (id)ex_as:(Class)cls strict:(BOOL)strict;
- (id)ex_asStrict:(Class)cls;

- (NSString *)ex_asString;
- (NSNumber *)ex_asNumber;
- (NSArray *)ex_asArray;
- (NSDictionary *)ex_asDictionary;
- (NSSet *)ex_asSet;

#ifdef OBJEX_AS_SHORTHAND
- (id)as:(Class)cls;
- (id)as:(Class)cls strict:(BOOL)strict;
- (id)asStrict:(Class)cls;
- (NSString *)asString;
- (NSNumber *)asNumber;
- (NSArray *)asArray;
- (NSDictionary *)asDictionary;
- (NSSet *)asSet;
#endif

@end
