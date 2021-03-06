//
//  CellInformation.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "CellInformation.h"

@implementation CellInformation

+(CellInformation *)createSliderCellWithTitle:(NSString *)title andValue:(NSNumber *)value andJSONKey:(NSString *)jsonKey
{
    CellInformation* info = [[self class] new];
    
    info.type = tfCellTypeSlider;
    
    info.fieldTitle = title;
    info.fieldValue = value;
    info.JSONKey = jsonKey;
    info.cellHeight = 45.0;
    return info;
    
}
+(CellInformation *)createBasicCellWithTitle:(NSString *)title andValue:(NSString *)value andPlaceholderValue:(NSString *)placeholder andJSONKeyValue:(NSString *)JSONKey andEditability:(BOOL)editability
{
    CellInformation *info = [[self class] new];
    
    info.type = tfCellTypeBasic;
    info.fieldTitle = title;
    info.placeHolderValue = placeholder;
    info.fieldValue = value;
    info.cellHeight = BasicCellHeight;
    info.JSONKey = JSONKey;
    info.informationHasChanged = NO;
    info.editability = editability;
    return info;

}
+(CellInformation *)createDateCellWithTitle:(NSString *)title andDate:(NSDate *)date andJSONKeyValue:(NSString *)JSONKey
{
    CellInformation* info = [[self class] new];
    
    info.type = tfCellTypeDate;
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
    
    info.type = tfCellTypeBasic;
    info.fieldTitle = title;
    info.placeHolderValue = placeholder;
    info.fieldValue = value;
    info.cellHeight = BasicCellHeight;
    info.JSONKey = JSONKey;
    info.informationHasChanged = NO;
    
    return info;
}

+(CellInformation *)createDateCellWithTitle:(NSString *)title andDate:(NSDate *)date andJSONKeyValue:(NSString *)JSONKey andIsEditable:(BOOL)editability
{
    CellInformation* info = [[self class] new];
    
    info.type = tfCellTypeDate;
    info.fieldTitle = title;
    info.fieldValue = date;
    info.JSONKey = JSONKey;
    info.editability = editability;
    [info setExpanded:NO];
    info.informationHasChanged = NO;
    
    return info;
}
-(void)setExpanded:(BOOL)expanded
{
    if (_type == tfCellTypeDate) {
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
        case tfCellTypeDate: {
            return [(NSDate*)_fieldValue displayWithType:tDisplayTypeSimple];
        }
            break;
        
        case tfCellTypeBasic: {
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
