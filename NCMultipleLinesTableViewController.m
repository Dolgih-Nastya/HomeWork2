//
//  NCMultipleLinesTableViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCMultipleLinesTableViewController.h"
#import "NCDigitsTableCellTableViewCell.h"
#import "NCSecondHelloViewController.h"

@interface NCMultipleLinesTableViewController ()
@property(nonatomic, strong) NSArray *digits;
@end

@implementation NCMultipleLinesTableViewController

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
    self.digits = @[@"1",@"2",@"3"];
    self.title = @"Second";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.digits.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"Cell";
    NCDigitsTableCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"NCDigitsTableCellTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    return  cell;
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(NCDigitsTableCellTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.firstLabel.text = self.digits[indexPath.row];
    cell.secondLabel.text = self.digits[indexPath.row];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.navigationController.navigationBar.hidden = YES;
    [self.navigationController pushViewController:[NCSecondHelloViewController new] animated:YES];
}



@end
