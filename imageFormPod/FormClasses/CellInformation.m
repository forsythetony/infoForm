//
//  CellInformation.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "CellInformation.h"

@implementation CellInformation

+(CellInformation *)createDateCellWithTitle:(NSString *)title andDate:(NSDate *)date andJSONKeyValue:(NSString *)JSONKey
{
    CellInformation* info = [[self class] new];
    
    info.type = cellTypeDate;
    info.fieldTitle = title;
    info.fieldValue = date;
    info.JSONKey = JSONKey;
    [info setExpanded:NO];
    info.informationHasChanged = NO;

    return info;
}
+(CellInformation *)createBasicCellWithTitle:(NSString *)title andValue:(NSString *)value andPlaceholderValue:(NSString *)placeholder andJSONKeyValue:(NSString *)JSONKey
{
    CellInformation *info = [[self class] new];
    
    info.type = cellTypeBasicText;
    info.fieldTitle = title;
    info.placeHolderValue = placeholder;
    info.fieldValue = value;
    info.cellHeight = BasicCellHeight;
    info.JSONKey = JSONKey;
    info.informationHasChanged = NO;
    
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

-(NSString *)getJSONKey
{
    if (_JSONKey) {
        return _JSONKey;
    }
    else
    {
        return nil;
    }
}
-(NSString *)getJSONValue
{
    if (!_fieldValue) {
        return nil;
    }
    
    switch (_type) {
        case cellTypeDate: {
            return [(NSDate*)_fieldValue displayDateOfType:sDateTypeSimple];
        }
            break;
        
        case cellTypeBasicText: {
            return (NSString*)_fieldValue;
        }
            break;
            
        default: {
            return nil;
        }
            break;
    }
}
@end
