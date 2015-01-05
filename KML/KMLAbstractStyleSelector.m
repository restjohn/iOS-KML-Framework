//
//  KMLAbstractStyleSelector.m
//  KML Framework
//
//  Created by NextBusinessSystem on 12/04/06.
//  Copyright (c) 2012 NextBusinessSystem Co., Ltd. All rights reserved.
//

#import "KMLAbstractStyleSelector.h"
#import "KMLElementSubclass.h"
#import "KMLStyle.h"
#import "KMLStyleMap.h"

@implementation KMLAbstractStyleSelector


#pragma mark - tag

+ styleIDFromURL:(NSString *)styleURL
{
    NSString *styleID;
    NSRange range = [styleURL rangeOfString:@"#"];
    if (range.length == 1 && range.location == 0) {
        styleID = [styleURL substringFromIndex:1];
    }
    return styleID;
}

+ (NSString *)tagName
{
    return @"AbstractStyleSelector";
}

+ (NSArray *)implementClasses
{
    NSMutableArray *array = @[].mutableCopy;
    [array addObject:[KMLStyle class]];
    [array addObject:[KMLStyleMap class]];
    return [NSArray arrayWithArray:array];
}

@end
