//
//  CellInformation.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "CellInformation.h"

@implementation CellInformation

+(CellInformation *)createDateCellWithTitle:(NSString *)title andDate:(NSDate *)date
{
    CellInformation* info = [[self class] new];
    
    info.type = cellTypeDate;
    info.fieldTitle = title;
    info.fieldValue = date;
    [info setExpanded:NO];

    return info;
}
+(CellInformation *)createBasicCellWithTitle:(NSString *)title andValue:(NSString *)value andPlaceholderValue:(NSString *)placeholder
{
    
    
    
    
    
    
    
    CellInformation *info = [[self class] new];
    
    info.type = cellTypeBasicText;
    info.fieldTitle = title;
    info.placeHolderValue = placeholder;
    info.fieldValue = value;
    info.cellHeight = BasicCellHeight;
    return info;
}
-(void)setExpanded:(BOOL)expanded
{
    if (_type == cellTypeDate) {
        _expanded = expanded;
        
        if (_expanded) {
            _cellHeight = DateCellHeightEditing;
        }
        else
        {
            _cellHeight = DateCellHeight;
        }
    }
}
@end
