//
//  DateCell.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInformation.h"

@interface DateCell : UITableViewCell


@property (strong, nonatomic) CellInformation* information;

@property (weak, nonatomic) IBOutlet UILabel *fieldTitleLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *fieldDatePicker;

@end
