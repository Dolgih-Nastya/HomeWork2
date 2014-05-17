//
//  NCTwoSectionsViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCTwoSectionsViewController.h"
#import "NCTwoDigitsTableViewCell.h"
#import "NCNamesTableViewCell.h"
#import "NCGenericTableViewCell.h"
#import "NCHelloViewController.h"
#import "NCGoogleViewController.h"
#import "NCOneDigitTableViewCell.h"
#import "NCTwoLabels.h"

@interface NCTwoSectionsViewController ()
@property(nonatomic, strong) NSArray *info1;

@property (nonatomic,strong) NSArray *info2;

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation NCTwoSectionsViewController

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
    self.info1 = @[@"1", @"2", @"3"];
    
    self.info2 = @[[[NCTwoLabels alloc] initWithFirstLabel:@"1" andSecondLabel:@"4"],
                   [[NCTwoLabels alloc] initWithFirstLabel:@"2" andSecondLabel:@"2"]];
    
    self.title = @"first";
    [self.tableView registerNib:[UINib nibWithNibName:@"NCOneDigitTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell1"];
    [self.tableView registerNib:[UINib nibWithNibName:@"NCTwoDigitsTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell2"];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (section == 0)
    {
        return self.info1.count;
    }
    else
    {
        return self.info2.count;
    }
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        return [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    }
    return [tableView dequeueReusableCellWithIdentifier:@"Cell2"];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(NCGenericTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0)
    {
        [cell setInfo:self.info1[indexPath.row]];
        
    }
    else
    {
        [cell setInfo:self.info2[indexPath.row]];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        [self.navigationController pushViewController:[NCHelloViewController new] animated:YES];
    }
    else
    {
        [self.navigationController pushViewController: [NCGoogleViewController new] animated:YES];
    }
}


@end
