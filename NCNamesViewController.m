//
//  NCNamesViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCNamesViewController.h"
#import "NCNamesTableViewCell.h"
#import "NCCellModel.h"
#import "NCPaintCellsViewController.h"

@interface NCNamesViewController ()
@property(nonatomic, strong) NSArray *names;
@property long currentRow;
@end

@implementation NCNamesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.names = @[[[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"]
                   ];
    self.title = @"First";
    // Do any additional setup after loading the view from its nib.
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.names.count;
}

- (void)changeBackgroundColor
{
    NCCellModel *cellModel = self.names[self.currentRow];
    cellModel.isSelected = YES;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"Cell";
    NCNamesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"NCNamesTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    NCCellModel *cellModel = self.names[indexPath.row];
    cell.firstLabel.text = cellModel.text;
    if (cellModel.isSelected)
    {
        cell.backgroundColor = [UIColor yellowColor];
    }

    return  cell;

}

- (void)tableView:(UITableView *)tableView willDisplayCell:(NCNamesTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
     //  [tableView reloadData];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
                
                
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NCPaintCellsViewController *paintCellController = [NCPaintCellsViewController new];
    paintCellController.delegate = self;
    self.currentRow = indexPath.row;
    [self.navigationController pushViewController:paintCellController animated:YES];
    
}



@end
