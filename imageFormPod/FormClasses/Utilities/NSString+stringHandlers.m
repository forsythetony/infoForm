//
//  NSString+stringHandlers.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 7/2/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "NSString+stringHandlers.h"

@implementation NSString (stringHandlers)

-(NSString *)addColonForTitle
{
    if (![self isEqualToString:@""]) {
        return self;
    }
    else
    {
        return [NSString stringWithFormat:@"%@:", self];
    }
}
@end
