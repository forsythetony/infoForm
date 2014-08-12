//
//  SliderCell.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 8/12/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInformation.h"

@interface SliderCell : UITableViewCell

@property (strong, nonatomic) CellInformation *info;

@property (weak, nonatomic) IBOutlet UILabel *fieldTitleLabel;
@property (weak, nonatomic) IBOutlet UISlider *fieldValueSlider;
@property (weak, nonatomic) IBOutlet UILabel *fieldValueLabel;

-(void)setup;

@end
