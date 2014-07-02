//
//  BasicCell.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInformation.h"
#import "Styler.h"

@interface BasicCell : UITableViewCell <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *fieldTitleLabel;
@property (weak, nonatomic) IBOutlet UITextField *fieldValueTextField;

@property (strong, nonatomic) CellInformation* information;

-(void)setTextfieldDelegate:(id) delegate;

@end
