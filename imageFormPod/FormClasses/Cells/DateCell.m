//
//  DateCell.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "DateCell.h"

@implementation DateCell

- (void)awakeFromNib
{
    [self initialSetup];
    
}
-(void)configureDatePicker
{
    _fieldDatePicker.datePickerMode = UIDatePickerModeDate;
    _fieldDatePicker.maximumDate = [ImageFormConstants maximumDate];
    _fieldDatePicker.minimumDate = [ImageFormConstants minimumDate];
    
    
}
-(void)configureTitleLabel
{
    _fieldTitleLabel.textAlignment = NSTextAlignmentRight;
    _fieldTitleLabel.font = [UIFont fontWithName:@"DinAlternate-Bold" size:30.0];
}
-(void)initialSetup
{
    [self configureDatePicker];
    [self configureTitleLabel];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setInformation:(CellInformation *)information
{
    _fieldTitleLabel.text = information.fieldTitle;
    _fieldDatePicker.date = (NSDate*)information.fieldValue;
}

@end
