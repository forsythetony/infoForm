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
    
    _fieldTitleLabel.textAlignment = NSTextAlignmentLeft;
    
}
-(void)initialSetup
{
    [self configureValueLabel];
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
    _fieldValueLabel.text = [(NSDate*)information.fieldValue displayDateOfType:sDateTypeSimple];
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

@end
