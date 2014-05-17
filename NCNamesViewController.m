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
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation NCNamesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.names = @[
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],
                   [[NCCellModel alloc] initWithName:@"Ann"],
                   [[NCCellModel alloc] initWithName:@"Alex"],
                   [[NCCellModel alloc] initWithName:@"George"],

                   ];
    self.title = @"First";
    [self.tableView registerNib:[UINib nibWithNibName:@"NCNamesTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.names.count;
}

- (void)update
{
    NCCellModel *cellModel = self.names[self.currentRow];
    cellModel.isSelected = YES;
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NCNamesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell"];
    [cell setInfo:self.names[indexPath.row]];
    return  cell;
}
                
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NCPaintCellsViewController *paintCellController = [NCPaintCellsViewController new];
    paintCellController.delegate = self;
    self.currentRow = indexPath.row;
    [self.navigationController pushViewController:paintCellController animated:YES];
}

@end
