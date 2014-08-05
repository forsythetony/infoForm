//
//  PopOverDateViewController.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 8/5/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInformation.h"

@class PopOverDateViewController;

@protocol DatePopoverDelegate <NSObject>

@end
@interface PopOverDateViewController : UIViewController

@property (nonatomic, strong) CellInformation* info;

@property (weak, nonatomic) IBOutlet UIDatePicker* datePick;
@end
