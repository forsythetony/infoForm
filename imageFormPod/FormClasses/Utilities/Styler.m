//
//  Styler.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "Styler.h"
#import <Colours.h>

@implementation Styler

+(UIFont *)basicCellTextValueFont{
    CGFloat fontSize = 20.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
    
}
+(UIFont *)basicCellTitleFont
{
    CGFloat fontSize = 20.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}
/*
    Date Cell Style Attributes
*/

//  Fonts
+(UIFont *)dateCellTitleFont
{
    CGFloat fontSize = 15.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}

//  Colors
+(UIColor *)dateCellTitleBackgroundColor
{
    return [UIColor clearColor];
}
+(UIColor *)dateCellTitleTextColor
{
    return [UIColor black25PercentColor];
}
+(UIColor *)dateCellValueBackgroundColor
{
    return [UIColor clearColor];
}
+(UIColor *)dateCellValueTextColor
{
    return [UIColor black25PercentColor];
}

@end
