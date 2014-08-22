//
//  Constants.m
//  PhotoUploading
//
//  Created by Anthony Forsythe on 8/5/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "Constants.h"

@implementation Constants

/*
    Keys
*/
+(NSString *)getKeyDateTaken
{
    return @"keyDateTakenJSON";
}

+(NSString *)getKeyDateUploaded
{
    return @"keyDateUploadedJSON";
}

+(NSString *)getKeyPhotographerName
{
    return @"keyPhotographerNameJSON";
}

+(NSString *)getKeyTitle
{
    return @"keyTitleJSON";
}

/*
    Labels
*/
+(NSString *)getLabelDateTaken
{
    return @"Date Taken";
}
+(NSString *)getLabelTakenBy
{
    return @"Taken By";
}
+(NSString *)getLabelDateUploaded
{
    return @"Date Uploaded";
}
+(NSString *)getLabelTitle
{
    return @"Title";
}
+(NSString *)getLabelConfidence
{
    return @"Confidence";
}
+(NSString *)getLabelUploadedBy
{
    return @"Uploaded By";
}

/*
    Image Information Constants
*/

+(NSString *)getFieldTypeTitle
{
    return @"fieldTitle";
}
+(NSString *)getFieldTypeDateTaken
{
    return @"fieldDateTaken";
}
+(NSString *)getFieldTypeHasEdited
{
    return @"fieldTypeHasEdited";
}
@end