//
//  InformationForm.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "InformationForm.h"
#import "PopOverDateViewController.h"

@interface InformationForm () <UIPopoverControllerDelegate> {
    
    NSMutableArray *expandedPaths;
    NSIndexPath *expandedPath;
    
    UIPopoverController* popController;
    
    DateCell* popCell;
}

@end

@implementation InformationForm

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        
    }
    return self;
}
-(void)addTestCells{
    
    [self addCellWithInformation:[CellInformation createDateCellWithTitle:@"Starting Date" andDate:[NSDate date] andJSONKeyValue:@"DateKey"]];
    
    [self addCellWithInformation:[CellInformation createBasicCellWithTitle:@"Name" andValue:@"Running Around" andPlaceholderValue:@"Name" andJSONKeyValue:@"NameKey"]];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    selectedIndexes = [[NSMutableDictionary alloc] init];
    [self addPopOverView];

}
-(void)viewDidAppear:(BOOL)animated
{
//        [self addCellWithInformation:[CellInformation createDateCellWithTitle:@"Starting Date" andDate:[NSDate date] andJSONKeyValue:@"DateKey"]];
//    
//        [self addCellWithInformation:[CellInformation createBasicCellWithTitle:@"Name" andValue:@"Running Around" andPlaceholderValue:@"Name" andJSONKeyValue:@"NameKey"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
-(void)addCellWithInformation:(CellInformation *)information
{
    if (!_currentCells) {
        _currentCells = [NSArray new];
    }
    [self.tableView beginUpdates];
    
    NSMutableArray *cells = [NSMutableArray arrayWithArray:_currentCells];
    
    [cells insertObject:information atIndex:0];
    
    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
    

    _currentCells = [NSArray arrayWithArray:cells];
    
    [self.tableView endUpdates];
}


#pragma mark - Table view data source
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (_currentCells && [_currentCells count] > 0) {
        
        CGFloat height = [_currentCells[indexPath.row] cellHeight];
        
        if ([self cellIsSelected:indexPath]) {
            
            return 236.0;
            
        }
        else
        {
            return height;
        }
    }
    else
    {
        return 0.0;
    }
    
}
- (BOOL)cellIsSelected:(NSIndexPath *)indexPath {
	// Return whether the cell at the specified index path is selected or not
	NSNumber *selectedIndex = [selectedIndexes objectForKey:indexPath];
	return selectedIndex == nil ? FALSE : [selectedIndex boolValue];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_currentCells) {
        return [_currentCells count];
    }
    else
    {
        return 0;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *dateCellIdentifier = @"DateCell";
    static NSString *basicCellIdentifier = @"BasicCell";
     
    CellInformation *info = _currentCells[indexPath.row];

    switch (info.type) {
        case tfCellTypeBasic: {
            
            BasicCell *cell = [tableView dequeueReusableCellWithIdentifier:basicCellIdentifier];
            
            if (cell == nil) {
                UINib* basicCellNib = [UINib nibWithNibName:@"BasicCell" bundle:nil];
                
                [tableView registerNib:basicCellNib forCellReuseIdentifier:basicCellIdentifier];
                
                cell = (BasicCell*)[tableView dequeueReusableCellWithIdentifier:basicCellIdentifier];
                
            }
            
            [cell setInformation:info];
            
            return cell;
        }
            break;
            
        case tfCellTypeDate: {
            
            DateCell *customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:dateCellIdentifier];
            
            if (customCell == nil) {
                UINib* customCellNib = [UINib nibWithNibName:@"DateCell" bundle:nil];
                
                [tableView registerNib:customCellNib forCellReuseIdentifier:dateCellIdentifier];
                
                customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:dateCellIdentifier];
                
            }
            [customCell setParentForm:self];
            
            [customCell setInformation:info];
            
            return customCell;

        }
            break;
            
        default: {
            
            return nil;
        }
            break;
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CellInformation *info = _currentCells[indexPath.row];
    
    switch (info.type) {
        case tfCellTypeDate: {
            /*
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
            
            BOOL isSelected = ![self cellIsSelected:indexPath];
            
            // Store cell 'selected' state keyed on indexPath
            NSNumber *selectedIndex = [NSNumber numberWithBool:isSelected];
            [selectedIndexes setObject:selectedIndex forKey:indexPath];
            
            
            // This is where magic happens...
            [tableView beginUpdates];
            [tableView endUpdates];
            
            DateCell *cell = (DateCell*)[tableView cellForRowAtIndexPath:indexPath];
            [cell showDatePicker];
             */
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
            [self presentPopOverWithCellInfo:info andCell:(DateCell*)[self.tableView cellForRowAtIndexPath:indexPath]];
            
            
            
        }
            break;
            
        default:
            break;
    }
}
-(void)showDatePickerWithInformation:(CellInformation*) info
{
    CGRect datePickerView = CGRectMake(0.0, 0.0, self.tableView.frame.size.width, 100.0);
    
    UIDatePicker *pickerView = [[UIDatePicker alloc] initWithFrame:datePickerView];
    
    pickerView.date = (NSDate*)info.fieldValue;
    
    [self.tableView addSubview:pickerView];
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    switch (section) {
        case 0: {
            
            //  Create Footer View
            
            CGRect footerViewFrame = CGRectMake(0.0, 0.0, self.tableView.frame.size.width, FooterHeight);
            
            UIView *footerView = [[UIView alloc] initWithFrame:footerViewFrame];
            
            //  Create Button View
            
            CGRect footerButtonFrame = footerViewFrame;
            
            UIButton *footerButton = [[UIButton alloc] initWithFrame:footerButtonFrame];
            
            [footerButton setTitle:@"Save" forState:UIControlStateNormal];
            
            footerButton.titleLabel.textAlignment = [Styler footerButtonTextAlignment];
            footerButton.titleLabel.font = [Styler footerButtonTitleFont];
            footerButton.titleLabel.textColor = [Styler footerButtonTextColor];
            footerButton.backgroundColor = [Styler footerButtonBackgroundColor];
            footerButton.layer.cornerRadius = [Styler footerButtonCornerRadius];
            
            [footerButton addTarget:self action:@selector(buttonPressSaveInformation:) forControlEvents:UIControlEventTouchUpInside];
            
            
            //  Add as subview to footerview
            
            [footerView addSubview:footerButton];
            
            
            
            return footerView;
            
            
        }
            break;
            
        default: {
            return nil;
        }
            break;
    }
}

-(void)buttonPressSaveInformation:(id) sender
{
    NSMutableArray *arry = [NSMutableArray new];
    
    for (CellInformation *info in _currentCells) {
    
        [arry addObject:@{[info getJSONKey]: [info getJSONValue]}];
        
    }
    
    [self.delegate finishedGatheringCellInformation:[NSArray arrayWithArray:arry]];
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return FooterHeight;
            break;
            
        default:
            return 0.0;
            break;
    }
}

-(void)addPopOverView
{
    PopOverDateViewController *content = [[PopOverDateViewController alloc] initWithNibName:@"PopOverDateViewController" bundle:[NSBundle mainBundle]];
    
    UIPopoverController *contr = [[UIPopoverController alloc] initWithContentViewController:content];
    contr.delegate = self;
    
    
    popController = contr;
    
    content.view.frame = content.datePick.frame;
    
    [contr setPopoverContentSize:content.view.frame.size];
    
    
    
}
-(void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
    for (CellInformation* info in _currentCells) {
        
        if (info == [(PopOverDateViewController*)popController.contentViewController info]){
            
            info.fieldValue = [[(PopOverDateViewController*)popController.contentViewController datePick] date];
            [popCell setInformation:info];
        }
    }
   
}
-(void)presentPopOverWithCellInfo:(CellInformation*) info andCell:(DateCell*) dateCell
{
    [(PopOverDateViewController*)popController.contentViewController setInfo:info];
    
    [popController presentPopoverFromRect:dateCell.frame inView:self.tableView permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
    
    popCell = dateCell;
}


@end
