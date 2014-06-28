//
//  InformationForm.m
//  imageFormPod
//
//  Created by Anthony Forsythe on 6/28/14.
//  Copyright (c) 2014 Tonyf. All rights reserved.
//

#import "InformationForm.h"

@interface InformationForm () {
    
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
}
-(void)viewDidAppear:(BOOL)animated
{
        [self addCellWithInformation:[CellInformation createDateCellWithTitle:@"Starting Date" andDate:[NSDate date]]];
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
        
        CellInformation *cellInfo = _currentCells[indexPath.row];
        
        switch (cellInfo.type) {
            
            case cellTypeBasicText:
                
                return BasicCellHeight;
                
                break;
                
            case cellTypeDate:
                
                return DateCellHeight;
                
                break;
                
            default:
                return DefaultHeight;
                break;
        }
        
    }
    else
    {
        return 0.0;
    }
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
    static NSString *cellIdentifier = @"DateCell";
    
    CellInformation *info = _currentCells[indexPath.row];

    DateCell *customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (customCell == nil) {
        UINib* customCellNib = [UINib nibWithNibName:@"DateCell" bundle:nil];
        
        [tableView registerNib:customCellNib forCellReuseIdentifier:cellIdentifier];
        
        customCell = (DateCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
    }
    
    [customCell setInformation:info];
    
    
    return customCell;

}

@end
