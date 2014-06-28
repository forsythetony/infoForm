//
//  InformationForm.h
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageFormConstants.h"
#import "CellInformation.h"
#import "Cells/DateCell.h"

@interface InformationForm : UITableViewController

@property (strong, nonatomic) NSArray* currentCells;


-(void)addCellWithInformation:(CellInformation*) information;

@end
