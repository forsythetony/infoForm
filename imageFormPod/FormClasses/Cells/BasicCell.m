//
//  BasicCell.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "BasicCell.h"
#import "NSString+stringHandlers.h"

@implementation BasicCell {
    NSString *oldTextFieldValue;
}

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
    _fieldTitleLabel.backgroundColor    = [Styler basicCellTitleBackgroundColor];
    _fieldTitleLabel.textColor          = [Styler basicCellTitleTextColor];
    
    _fieldTitleLabel.font = [Styler basicCellTitleFont];
    
    _fieldTitleLabel.textAlignment = NSTextAlignmentRight;
    
}
-(void)configureTextfield
{
    _fieldValueTextField.backgroundColor    = [Styler basicCellValueBackgroundColor];
    _fieldValueTextField.textColor          = [Styler basicCellValueTextColor];

    _fieldValueTextField.font = [Styler basicCellTextValueFont];
    
    _fieldValueTextField.borderStyle = UITextBorderStyleNone;
    
    _fieldValueTextField.delegate = self;

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
    _fieldTitleLabel.text = [information.fieldTitle addColonForTitle];
    
    _fieldValueTextField.placeholder = (NSString*)information.placeHolderValue;
    _fieldValueTextField.text = (NSString*)information.fieldValue;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    oldTextFieldValue = textField.text;
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{

/*    CellInformation *info = _information;

    
    if (![oldTextFieldValue isEqualToString:textField.text]) {
        info.fieldValue = textField.text;
        info.informationHasChanged = YES;
    }
 
 */
    _information.fieldTitle = textField.text;
}

@end
