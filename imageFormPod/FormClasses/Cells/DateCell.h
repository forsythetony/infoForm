//
//  DateCell.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInformation.h"
#import "Styler.h"
#import "NSDate+timelineStuff.h"

@interface DateCell : UITableViewCell 


@property (strong, nonatomic) CellInformation*  information;
@property (strong, nonatomic) UIDatePicker*     datePicker;

@property (assign, nonatomic) BOOL expanded;

@property (weak, nonatomic) IBOutlet UILabel *fieldTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *fieldValueLabel;


-(void)showDatePicker;
-(void)becomeEditable;

@end
