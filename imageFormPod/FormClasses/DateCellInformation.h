//
//  DateCellInformation.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageFormConstants.h"

@interface DateCellInformation : NSObject

@property (strong, nonatomic) NSDate*   dateInitial;
@property (nonatomic, assign) cellType type;

@end
