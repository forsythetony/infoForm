//
//  Styler.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "Styler.h"
#import <Colours.h>

#define TESTING NO

@implementation Styler


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
    if (TESTING) {
        return [UIColor yellowColor];
    }
    else
    {
        return [UIColor clearColor];
    }
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
+(UIColor *)dateCellValueTextColorForEditability:(BOOL)editability
{
    if (editability) {
        return [UIColor blackColor];
    }
    else
    {
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
}
//  Other
+(UIDatePickerMode)dateCellDatePickerMode
{
    return UIDatePickerModeDate;
}
/*
    Basic Cell Style Attributes
*/

//  Fonts
+(UIFont *)basicCellTitleFont
{
    CGFloat fontSize = 15.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}
+(UIFont *)basicCellTextValueFont{
    CGFloat fontSize = 15.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
    
}

//  Colors
+(UIColor *)basicCellTitleBackgroundColor
{
    if (TESTING) {
        return [UIColor orangeColor];
    }
    else
    {
        return [UIColor clearColor];
    }
}
+(UIColor *)basicCellTitleTextColor
{
    return [UIColor black25PercentColor];
}

+(UIColor *)basicCellValueBackgroundColor
{
    return [UIColor clearColor];
}
+(UIColor *)basicCellValueTextColor
{
    return [UIColor black25PercentColor];
}

/*
    Footer Button
*/

+(UIFont *)footerButtonTitleFont
{
    CGFloat fontSize = 20.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}

//  Colours

+(UIColor *)footerButtonBackgroundColor
{
    return [UIColor successColor];
}
+(UIColor *)footerButtonTextColor
{
    return [UIColor whiteColor];
}

//  Other

+(NSTextAlignment)footerButtonTextAlignment
{
    return NSTextAlignmentCenter;
}
+(CGFloat)footerButtonCornerRadius
{
    return 8.0;
}

/*
    Slider Cell
*/

//  Fonts

+(UIFont *)sliderCellTitleFont
{
    CGFloat fontSize = 15.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];

}
+(UIFont *)sliderCellValueLabelFont
{
    CGFloat fontSize = 15.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}

//  Colors

+(UIColor *)sliderCellTitleTextColor
{
    return [UIColor black25PercentColor];
}
+(UIColor *)sliderCellTitleBackgroundColor
{
    return [UIColor clearColor];
}

+(UIColor *)sliderCellValueLabelTextColor
{
    return [UIColor black25PercentColor];
}

+(UIColor *)sliderCellvalueLabelBackgroundColor
{
    return [UIColor clearColor];
}

+(UIColor *)sliderCellSliderMaxTrackColor
{
    return [UIColor redColor];

}
+(UIColor *)sliderCellSliderMinTrackColor
{
    return [UIColor yellowColor];

}

//  Text Alignment

+(NSTextAlignment)sliderCellTitleTextAlignment
{
    return NSTextAlignmentLeft;
}
+(NSTextAlignment)sliderCellValueLabelTextAlignment
{
    return NSTextAlignmentCenter;
}
@end
