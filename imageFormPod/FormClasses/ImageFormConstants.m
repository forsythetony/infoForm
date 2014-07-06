//
//  ImageFormConstants.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "ImageFormConstants.h"
#import "NSDate+helperStuff.h"

@implementation ImageFormConstants

+(NSDate *)maximumDate
{
    return [NSDate date];
}
+(NSDate *)minimumDate
{
    return [NSDate dateWithString:@"01/01/1500" ofType:tDateStringTypeSimple];
}
@end
