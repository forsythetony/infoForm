//
//  BasicCell.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "BasicCell.h"

@implementation BasicCell

- (void)awakeFromNib
{
    [self initialSetup];
}
-(void)initialSetup
{
    [self configureTextfield];
    [self configureTitleLabel];
}
-(void)configureTitleLabel
{
    _fieldTitleLabel.backgroundColor = [UIColor clearColor];
    _fieldTitleLabel.font = [Styler basicCellTitleFont];
    _fieldTitleLabel.textAlignment = NSTextAlignmentRight;
    
}
-(void)configureTextfield
{
    _fieldValueTextField.borderStyle = UITextBorderStyleNone;
    _fieldValueTextField.font = [Styler basicCellTextValueFont];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

-(void)setTextfieldDelegate:(id)delegate
{
    _fieldValueTextField.delegate = delegate;
}
-(void)setInformation:(CellInformation *)information
{
    _fieldTitleLabel.text = information.fieldTitle;
    
    _fieldValueTextField.placeholder = (NSString*)information.placeHolderValue;
    _fieldValueTextField.text = (NSString*)information.fieldValue;
}
@end
