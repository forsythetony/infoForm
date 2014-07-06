//
//  NSDate+helperStuff.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 7/6/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, tDisplayType) {
    
    tDisplayTypeSimple,
    tDisplayTypeURL,
    tDisplayTypePretty
};

typedef NS_ENUM(NSInteger, tDateStringType) {
    tDateStringTypeSimple,
    tDateStringTypeComplex
};

@interface NSDate (helperStuff)

+(NSDate*)dateWithString:(NSString*) dateString ofType:(tDateStringType) dateStringType;

-(NSString*)displayWithType:(tDisplayType) displayType;

@end
