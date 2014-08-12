//
//  Styler.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>

#define globalFont @"DINAlternate-Bold"

@interface Styler : NSObject

/* 
    Main
*/

+(UIColor*)mainBackground;

/*
    Date Cell Style Attributes
*/

//  Fonts
+(UIFont*)dateCellTitleFont;

//  Colors
+(UIColor*)dateCellTitleBackgroundColor;
+(UIColor*)dateCellTitleTextColor;

+(UIColor*)dateCellValueBackgroundColor;
+(UIColor*)dateCellValueTextColor;
+(UIColor*)dateCellValueTextColorForEditability:(BOOL) editability;


//  Other
+(UIDatePickerMode)dateCellDatePickerMode;

/*
    Basic Cell Style Attributes
*/

//  Fonts
+(UIFont*)basicCellTitleFont;
+(UIFont*)basicCellTextValueFont;

//  Colors
+(UIColor*)basicCellTitleBackgroundColor;
+(UIColor*)basicCellTitleTextColor;

+(UIColor*)basicCellValueBackgroundColor;
+(UIColor*)basicCellValueTextColor;

+(UIColor*)basicCellValuePlaceholderColorValue;

//  Other

+(CGFloat)basicCellValueCornerRadius;
/*
    Table Footer Button Style Attributes
*/

//  Fonts
+(UIFont*)footerButtonTitleFont;

//  Colors
+(UIColor*)footerButtonBackgroundColor;
+(UIColor*)footerButtonTextColor;

//  Text Alignment
+(NSTextAlignment)footerButtonTextAlignment;
+(CGFloat)footerButtonCornerRadius;

/* 
    Slider Cell Attributes
*/

+(UIColor*)sliderCellTitleTextColor;
+(UIColor*)sliderCellTitleBackgroundColor;
+(UIFont*)sliderCellTitleFont;
+(NSTextAlignment)sliderCellTitleTextAlignment;

+(UIColor*)sliderCellValueLabelTextColor;
+(UIColor*)sliderCellvalueLabelBackgroundColor;
+(UIFont*)sliderCellValueLabelFont;
+(NSTextAlignment)sliderCellValueLabelTextAlignment;

+(UIColor*)sliderCellSliderMaxTrackColor;
+(UIColor*)sliderCellSliderMinTrackColor;
+(UIColor*)sliderCellSliderLowTrackColor;
+(UIColor*)sliderCellSliderMediumTrackColor;
+(UIColor*)sliderCellSliderHighTrackColor;




@end
