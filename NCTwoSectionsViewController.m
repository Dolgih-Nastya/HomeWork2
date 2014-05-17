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

@interface NCTwoSectionsViewController ()
@property(nonatomic, strong) NSArray *info1;
@property(nonatomic, strong) NSArray *info2;
@property(nonatomic, strong) NSArray *info3;
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
    self.info2 = @[@"1", @"2"];
    self.info3 = @[@"4", @"2"];
    self.title = @"first";
    
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
    NSString *identifier = @"";
    NSString *nibName = @"";
    UITableViewCell *cell;
    if (indexPath.section == 0)
    {
        nibName = @"NCNamesTableViewCell";
        identifier = @"Cell1";
    }
    else{
        nibName = @"NCTwoDigitsTableViewCell";
        identifier = @"Cell2";
    }
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:identifier];
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    return  cell;
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(NCGenericTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0)
    {
        cell.firstLabel.text = self.info1[indexPath.row];
    }
    else
    {
        cell.firstLabel.text = self.info2[indexPath.row];
        cell.secondLabel.text = self.info3[indexPath.row];
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
