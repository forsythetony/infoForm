//
//  DateCell.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "DateCell.h"
#import "NSString+stringHandlers.h"

@implementation DateCell

- (void)awakeFromNib
{
    [self initialSetup];
    _expanded = NO;
    [_datePicker removeFromSuperview];
    
}
-(void)configureValueLabel
{
    _fieldValueLabel.font = [Styler dateCellTitleFont];
    
    _fieldValueLabel.textColor          =   [Styler dateCellValueTextColor];
    _fieldValueLabel.backgroundColor    =   [Styler dateCellValueBackgroundColor];
    
    _fieldValueLabel.textAlignment = NSTextAlignmentLeft;
    
    
}
-(void)configureTitleLabel
{
    _fieldTitleLabel.font = [Styler dateCellTitleFont];
    
    _fieldTitleLabel.textColor          = [Styler dateCellTitleTextColor];
    _fieldTitleLabel.backgroundColor    = [Styler dateCellTitleBackgroundColor];
    
    _fieldTitleLabel.textAlignment = NSTextAlignmentRight;
    
}
-(void)initialSetup
{
    [self configureValueLabel];
    [self configureTitleLabel];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    /*
    if (!_expanded) {
        [self addDatePicker];
    }
    else
    {
        [self removeDatePicker];
    }
     */
    
    
}
-(void)showDatePicker
{
    if (!_expanded) {
        [self addDatePicker];
    }
    else
    {
        [self removeDatePicker];
    }
}
-(void)removeDatePicker
{
    [_datePicker removeFromSuperview];
    _datePicker = nil;
    _expanded = NO;
}
-(void)addDatePicker
{
    CGRect datePickerRect = CGRectMake(0.0, _fieldTitleLabel.frame.origin.y + _fieldTitleLabel.frame.size.height, self.frame.size.width, 200.0);
    
    _datePicker = [[UIDatePicker alloc] initWithFrame:datePickerRect];
    
    _datePicker.alpha = 0.0;
    
    
    _datePicker.date = (NSDate*)_information.fieldValue;
    _datePicker.datePickerMode = [Styler dateCellDatePickerMode];
    
    [_datePicker addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged];
    
    _expanded = YES;
    
    [self addSubview:_datePicker];
    
    [UIView animateWithDuration:0.5 animations:^{
        _datePicker.alpha = 1.0;
    }];
}
-(void)setInformation:(CellInformation *)information
{
    _information = information;
    _fieldTitleLabel.text = [_information.fieldTitle addColonForTitle];
    
    _fieldValueLabel.text = [(NSDate*)_information.fieldValue displayDateOfType:sDateTypPretty];

    _expanded = NO;
}
-(void)becomeEditable
{
    if (!_expanded) {
        CGRect oldFrame = self.frame;
        CGRect newFrame = oldFrame;
        newFrame.size.height = _information.cellHeight;
        
        [UIView animateWithDuration:0.25 animations:^{
            self.frame = newFrame;
            
        }];
        
        _expanded = YES;
    }
    
}
-(void)dateChanged:(id) sender
{
    _information.informationHasChanged = YES;
    _information.fieldValue = _datePicker.date;
    
    _fieldValueLabel.text = [_datePicker.date displayDateOfType:sDateTypPretty];
}


@end
