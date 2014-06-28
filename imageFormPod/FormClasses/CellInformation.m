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

    return info;
}
@end
