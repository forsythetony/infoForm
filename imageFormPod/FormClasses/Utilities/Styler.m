//
//  Styler.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "Styler.h"
@implementation Styler

+(UIFont *)basicCellTextValueFont{
    CGFloat fontSize = 30.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
    
}
+(UIFont *)basicCellTitleFont
{
    CGFloat fontSize = 30.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}
+(UIFont *)dateCellTitleFont
{
    CGFloat fontSize = 30.0;
    
    return [UIFont fontWithName:globalFont size:fontSize];
}

@end
