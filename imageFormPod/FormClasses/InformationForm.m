//
//  InformationForm.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "InformationForm.h"

@interface InformationForm () {
    
    NSMutableArray *expandedPaths;
    NSIndexPath *expandedPath;
    
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    selectedIndexes = [[NSMutableDictionary alloc] init];

}
-(void)viewDidAppear:(BOOL)animated
{
        [self addCellWithInformation:[CellInformation createDateCellWithTitle:@"Starting Date" andDate:[NSDate date] andJSONKeyValue:@"DateKey"]];
    
        [self addCellWithInformation:[CellInformation createBasicCellWithTitle:@"Name" andValue:@"Running Around" andPlaceholderValue:@"Name" andJSONKeyValue:@"NameKey"]];
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
    
    NSMutableArray *cells = [NSMutableArray arrayWithArray:_currentCells];
    
    [cells addObject:information];
    
    _currentCells = [NSArray arrayWithArray:cells];
    
    [self.tableView reloadData];
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
        case cellTypeBasicText: {
            
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
            
        case cellTypeDate: {
            
            DateCell *customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:dateCellIdentifier];
            
            if (customCell == nil) {
                UINib* customCellNib = [UINib nibWithNibName:@"DateCell" bundle:nil];
                
                [tableView registerNib:customCellNib forCellReuseIdentifier:dateCellIdentifier];
                
                customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:dateCellIdentifier];
                
            }
            
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
        case cellTypeDate: {
            
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


@end
