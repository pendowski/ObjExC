//
//  NSObject+ObjExC.m
//  ObjExC
//
//  Created by Jarosław Pendowski on 17/04/14.
//  Copyright (c) 2014 Jarosław Pendowski. All rights reserved.
//

#import "NSObject+ObjExC.h"

@implementation NSObject (ObjExC)

- (id)ex_as:(Class)cls
{
  return [self isKindOfClass:cls] ? self : nil;
}

- (id)ex_as:(Class)cls strict:(BOOL)strict
{
  return strict ? [self ex_asStrict:cls] : [self ex_as:cls];
}

- (id)ex_asStrict:(Class)cls
{
  return [self isMemberOfClass:cls] ? self : nil;
}

#pragma mark - Built-in classes

- (NSString *)ex_asString
{
  return [self ex_as:[NSString class]];
}

- (NSNumber *)ex_asNumber
{
  return [self ex_as:[NSNumber class]];
}

- (NSArray *)ex_asArray
{
  return [self ex_as:[NSArray class]];
}

- (NSDictionary *)ex_asDictionary
{
  return [self ex_as:[NSDictionary class]];
}

- (NSSet *)ex_asSet
{
  return [self ex_as:[NSSet class]];
}

#pragma mark - Shorthand methods

#ifdef OBJEX_AS_SHORTHAND

- (id)as:(Class)cls
{
  return [self ex_as:cls];
}

- (id)as:(Class)cls strict:(BOOL)strict
{
  return [self ex_as:cls strict:strict];
}

- (id)asStrict:(Class)cls
{
  return [self ex_asStrict:cls];
}

- (NSString *)asString
{
  return [self ex_asString];
}

- (NSNumber *)asNumber
{
  return [self ex_asNumber];
}

- (NSArray *)asArray
{
  return [self ex_asArray];
}

- (NSDictionary *)asDictionary
{
  return [self ex_asDictionary];
}

- (NSSet *)asSet
{
  return [self ex_asSet];
}

#endif

@end
