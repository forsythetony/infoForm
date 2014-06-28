//
//  ImageFormConstants.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>


#define DateCellHeight      216.0
#define BasicCellHeight     40.0
#define DefaultHeight       40.0

#define DateCellFrame       CGRectMake(0.0, 0.0, self.tableView.frame.size.width, DateCellHeight)

typedef NS_ENUM(NSInteger, cellType) {
    cellTypeBasicText,
    cellTypeDate
};

@interface ImageFormConstants : NSObject

+(NSDate*)maximumDate;
+(NSDate*)minimumDate;

@end
