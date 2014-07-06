//
//  ImageFormConstants.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <Foundation/Foundation.h>


#define DateCellHeight          35.0
#define DateCellHeightEditing   70.0

#define BasicCellHeight     35.0

#define DefaultHeight       40.0

#define DateCellFrame       CGRectMake(0.0, 0.0, self.tableView.frame.size.width, DateCellHeight)

#define FooterHeight        50.0

typedef NS_ENUM(NSInteger, tfCellType) {
    tfCellTypeBasic,
    tfCellTypeDate
};

@interface ImageFormConstants : NSObject

+(NSDate*)maximumDate;
+(NSDate*)minimumDate;

@end
