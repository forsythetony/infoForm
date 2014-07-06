//
//  ViewController.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InformationForm.h"

@interface ViewController : UIViewController <InformationFormDelegate>

@property (weak, nonatomic) IBOutlet UIView *formContainerView;


@end
