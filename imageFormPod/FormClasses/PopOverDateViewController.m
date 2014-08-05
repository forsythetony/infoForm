//
//  PopOverDateViewController.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 8/5/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "PopOverDateViewController.h"

@interface PopOverDateViewController ()



@end

@implementation PopOverDateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [_datePick setDatePickerMode:UIDatePickerModeDate];
    [_datePick addTarget:self action:@selector(updateDate:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setInfo:(CellInformation *)info
{
    _info = info;
    
    [_datePick setDate:(NSDate*)[info fieldValue]];
    
}

-(void)updateDate:(id)sender
{
    _info.fieldValue = _datePick.date;
}
@end
