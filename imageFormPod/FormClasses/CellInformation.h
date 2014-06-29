//
//  CellInformation.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageFormConstants.h"

@interface CellInformation : NSObject

@property (assign, nonatomic) cellType type;

@property (strong, nonatomic) NSString* fieldTitle;
@property (strong, nonatomic) id    fieldValue;
@property (strong, nonatomic) id    placeHolderValue;

+(CellInformation*)createDateCellWithTitle:(NSString*) title andDate:(NSDate*) date;
+(CellInformation*)createBasicCellWithTitle:(NSString*) title andPlaceholderValue:(NSString*) placeholder;

@end
