//
//  FooterButton.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 8/5/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "FooterButton.h"
#import <Colours/Colours.h>

@implementation FooterButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setTitle:@"Save" forState:UIControlStateNormal];
        [self setIsEnabled:NO];
    }
    return self;
}
-(void)setIsEnabled:(BOOL)isEnabled
{
    if (isEnabled) {
        self.backgroundColor = [self enabledColor];
        _isEnabled = isEnabled;
        [self setEnabled:isEnabled];
    }
    else
    {
        self.backgroundColor = [self disabledColor];
        _isEnabled = isEnabled;
        [self setEnabled:isEnabled];
    }
}

-(UIColor*)enabledColor {
    
    return [UIColor successColor];
}
-(UIColor*)disabledColor {
    
    return [[UIColor successColor] colorWithAlphaComponent:0.3];
}
@end
