//
//  ViewController.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    InformationForm *infoForm;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    infoForm = [[InformationForm alloc] init];
    
    infoForm.view.frame = _formContainerView.bounds;
    infoForm.delegate = self;
    
    [_formContainerView addSubview:infoForm.view];
    
    [self addChildViewController:infoForm];
    
    [infoForm didMoveToParentViewController:self];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)finishedGatheringCellInformation:(NSArray *)cellInfo
{
    for (CellInformation* info in cellInfo) {

        NSLog(@"%@", info);
        
    }
}
@end
