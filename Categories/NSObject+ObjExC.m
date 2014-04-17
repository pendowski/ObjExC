//
//  NSObject+ObjExC.m
//  ObjExC
//
//  Created by Jarosław Pendowski on 17/04/14.
//  Copyright (c) 2014 Jarosław Pendowski. All rights reserved.
//

#import "NSObject+ObjExC.h"

@implementation NSObject (ObjExC)

- (id)as:(Class)cls
{
  return [self isKindOfClass:cls] ? self : nil;
}

- (id)as:(Class)cls strict:(BOOL)strict
{
  return strict ? [self asStrict:cls] : [self as:cls];
}

- (id)asStrict:(Class)cls
{
  return [self isMemberOfClass:cls] ? self : nil;
}

#pragma mark - Built-in classes

- (NSString *)asString
{
  return [self as:[NSString class]];
}

- (NSNumber *)asNumber
{
  return [self as:[NSNumber class]];
}

- (NSArray *)asArray
{
  return [self as:[NSArray class]];
}

- (NSDictionary *)asDictionary
{
  return [self as:[NSDictionary class]];
}

- (NSSet *)asSet
{
  return [self as:[NSSet class]];
}

@end
