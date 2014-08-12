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
    Main
*/

//  Colors

+(UIColor *)mainBackground
{
    return [UIColor charcoalColor];
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
    return [UIColor icebergColor];
}
+(UIColor *)dateCellValueBackgroundColor
{
    return [UIColor clearColor];
}
+(UIColor *)dateCellValueTextColor
{
    return [UIColor icebergColor];
}
+(UIColor *)dateCellValueTextColorForEditability:(BOOL)editability
{
    if (editability) {
        return [UIColor icebergColor];
    }
    else
    {
        return [[UIColor icebergColor] colorWithAlphaComponent:0.5];
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
    return [UIColor icebergColor];
}

+(UIColor *)basicCellValueBackgroundColor
{
    return [UIColor clearColor];
}
+(UIColor *)basicCellValueTextColor
{
    return [UIColor icebergColor];
}

+(UIColor*)basicCellValuePlaceholderColorValue
{
    return [[UIColor icebergColor] colorWithAlphaComponent:0.4];
}

//  Other

+(CGFloat)basicCellValueCornerRadius
{
    return 5.0;
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
    return [UIColor icebergColor];
}
+(UIColor *)sliderCellTitleBackgroundColor
{
    return [UIColor clearColor];
}

+(UIColor *)sliderCellValueLabelTextColor
{
    return [UIColor icebergColor];
}

+(UIColor *)sliderCellvalueLabelBackgroundColor
{
    return [UIColor clearColor];
}

+(UIColor *)sliderCellSliderMaxTrackColor
{
    return [UIColor black25PercentColor];

}
+(UIColor *)sliderCellSliderMinTrackColor
{
    return [UIColor chartreuseColor];

}
+(UIColor *)sliderCellSliderHighTrackColor
{
    return [UIColor chartreuseColor];
}
+(UIColor *)sliderCellSliderMediumTrackColor
{
    return [UIColor warningColor];
}
+(UIColor *)sliderCellSliderLowTrackColor
{
    return [UIColor dangerColor];
}

//  Text Alignment

+(NSTextAlignment)sliderCellTitleTextAlignment
{
    return NSTextAlignmentRight;
}
+(NSTextAlignment)sliderCellValueLabelTextAlignment
{
    return NSTextAlignmentCenter;
}
@end
