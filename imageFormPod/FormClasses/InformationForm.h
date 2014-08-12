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
#import "DateCell.h"
#import "BasicCell.h"
#import "Styler.h"
#import "NSString+stringHandlers.h"
#import "Constants.h"
#import "imageObject.h"

@protocol InformationFormDelegate <NSObject>

-(void)finishedGatheringCellInformation:(NSArray*) cellInfo;

@end

@interface InformationForm : UITableViewController {
    
    NSMutableDictionary *selectedIndexes;
    
}
@property (nonatomic, assign) BOOL isActive;
@property (nonatomic, strong) UIView* inactiveView;

@property (strong, nonatomic) NSArray* currentCells;
@property (strong, nonatomic) Styler* myStyler;
@property (strong, nonatomic) imageObject* imageInformation;

@property (weak, nonatomic) id <InformationFormDelegate> delegate;

-(void)addCellWithInformation:(CellInformation*) information;
-(void)addCellToEndWithInformation:(CellInformation *)information;

-(void)addTestCells;

-(void)emptySetup;
-(void)enable;
-(void)enableFooter;

-(void)updateFormWithInformation:(imageObject*) information;
-(void)disableFooter;


@end
