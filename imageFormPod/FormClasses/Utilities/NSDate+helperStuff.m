//
//  NSDate+helperStuff.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 7/6/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "NSDate+helperStuff.h"

@implementation NSDate (helperStuff)

+(NSDate *)dateWithString:(NSString *)dateString ofType:(tDateStringType)dateStringType
{
    NSDateFormatter *fm     = [NSDateFormatter new];
    
    NSString* dateFormatString;
    
    switch (dateStringType) {
        case tDateStringTypeSimple: {
            
            dateFormatString = @"MM/dd/yyyy";

        }
            break;
            
        default: {
            dateFormatString = @"MM/dd/yyyy";
        }
            break;
    }
    
    [fm setDateFormat:dateFormatString];
    
    return [fm dateFromString:dateString];

}
-(NSString *)displayWithType:(tDisplayType)displayType
{
    NSString *dateFormat;
    
    switch (displayType) {
            
        case tDisplayTypeSimple:
            dateFormat = @"M/dd/yyyy";
            break;
            
        case tDisplayTypePretty:
            dateFormat = @"EEEE MMMM d yyyy";
            break;

        case tDisplayTypeURL:
            dateFormat = @"M-dd-yyyy-hh-mm";
            break;
            
        default:
            break;
    }
    
    NSDateFormatter *fm = [NSDateFormatter new];
    
    [fm setDateFormat:dateFormat];
    
    return [fm stringFromDate:self];
}
@end
