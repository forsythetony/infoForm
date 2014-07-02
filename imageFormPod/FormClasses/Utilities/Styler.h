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
    Date Cell Style Attributes
*/

//  Fonts
+(UIFont*)dateCellTitleFont;

//  Colors
+(UIColor*)dateCellTitleBackgroundColor;
+(UIColor*)dateCellTitleTextColor;

+(UIColor*)dateCellValueBackgroundColor;
+(UIColor*)dateCellValueTextColor;


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

@end
