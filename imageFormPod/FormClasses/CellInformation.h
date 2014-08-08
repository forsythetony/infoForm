//
//  CellInformation.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageFormConstants.h"
#import "NSDate+helperStuff.h"

@interface CellInformation : NSObject

@property (assign, nonatomic) tfCellType type;
@property (assign, nonatomic) CGFloat   cellHeight;
@property (assign, nonatomic) BOOL  expanded;

@property (strong, nonatomic) NSString* JSONKey;
@property (assign, nonatomic) BOOL informationHasChanged;

@property (strong, nonatomic) NSString* fieldTitle;
@property (strong, nonatomic) id    fieldValue;
@property (strong, nonatomic) id    placeHolderValue;
@property (assign, nonatomic) BOOL  editability;

+(CellInformation*)createDateCellWithTitle:(NSString*) title andDate:(NSDate*) date andJSONKeyValue:(NSString*) JSONKey;
+(CellInformation*)createBasicCellWithTitle:(NSString*) title andValue:(NSString*) value andPlaceholderValue:(NSString*) placeholder andJSONKeyValue:(NSString*) JSONKey;
+(CellInformation*)createDateCellWithTitle:(NSString*) title andDate:(NSDate*) date andJSONKeyValue:(NSString*) JSONKey andIsEditable:(BOOL) editability;

-(NSString*)getJSONKey;
-(NSString*)getJSONValue;

@end
