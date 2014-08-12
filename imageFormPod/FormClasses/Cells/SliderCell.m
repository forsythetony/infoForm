//
//  SliderCell.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 8/12/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "SliderCell.h"
#import "Styler.h"

float sliderMaxValue = 100.0;
float sliderMinValue = 0.0;

@implementation SliderCell
@synthesize fieldTitleLabel, fieldValueSlider, fieldValueLabel;
- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setup
{
    [self mainSetup];
    [self labelSetup];
    [self sliderSetup];
}
-(void)mainSetup
{
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.backgroundColor = [Styler mainBackground];
}
-(void)labelSetup
{
    fieldTitleLabel.font = [Styler sliderCellTitleFont];
    fieldTitleLabel.textColor = [Styler sliderCellTitleTextColor];
    fieldTitleLabel.backgroundColor = [Styler sliderCellTitleBackgroundColor];
    fieldTitleLabel.textAlignment = [Styler sliderCellTitleTextAlignment];
    
    fieldValueLabel.font = [Styler sliderCellValueLabelFont];
    fieldValueLabel.textColor = [Styler sliderCellValueLabelTextColor];
    fieldValueLabel.backgroundColor = [Styler sliderCellvalueLabelBackgroundColor];
    fieldValueLabel.textAlignment = [Styler sliderCellValueLabelTextAlignment];

    
}
-(void)sliderSetup
{
    [fieldValueSlider setMinimumValue:sliderMinValue];
    [fieldValueSlider setMaximumValue:sliderMaxValue];
    [fieldValueSlider setValue:0.0];
    
    [fieldValueSlider addTarget:self action:@selector(updateSlider:) forControlEvents:UIControlEventValueChanged];
    
    
    
}
-(void)updateSlider:(UISlider*) sender
{
    [self updateSliderValueWithNumber:@([sender value])];
    _info.fieldValue = @([sender value]);
    
}
-(void)updateSliderValueWithNumber:(NSNumber*) newValue
{
    if (newValue) {
        float value = [newValue floatValue];
        
        if (value <= 100 && value >= 0) {
            [fieldValueSlider setValue:value animated:YES];
            [self updateSliderColorWithValue:value];
            [self setLabelWithFloat:value];
        }
    }
}
-(void)updateSliderColorWithValue:(float) newValue
{
    UIColor *newColor;
    
    if (newValue >= 0 && newValue <= 33) {
        newColor = [Styler sliderCellSliderLowTrackColor];
    }
    else if( newValue > 33 && newValue <= 66) {
        newColor = [Styler sliderCellSliderMediumTrackColor];
    }
    else
    {
        newColor = [Styler sliderCellSliderHighTrackColor];
    }
    
    [fieldValueSlider setMinimumTrackTintColor:newColor];
}

-(void)setLabelWithFloat:(float) newValue
{
    NSString *labelString = [NSString stringWithFormat:@"%.0f", newValue];
    
    [fieldValueLabel setText:labelString];
}
-(void)setInfo:(CellInformation *)info
{
    _info = info;
    [self updateSliderValueWithNumber:(NSNumber*)info.fieldValue];
    
    //  Field Title
    
    fieldTitleLabel.text = [info.fieldTitle addColonForTitle];
    
}

@end
