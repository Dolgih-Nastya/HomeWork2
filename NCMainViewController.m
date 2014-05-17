//
//  NCMainViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCMainViewController.h"
#import "NCNamesViewController.h"
#import "NCMultipleLinesTableViewController.h"
#import "NCTwoSectionsViewController.h"
#import "NCBirthDayViewController.h"

@interface NCMainViewController ()
@property (strong, nonatomic) UITabBarController *tabBarController;
@end

@implementation NCMainViewController

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
    [self setTabBarController];
    // Do any additional setup after loading the view from its nib.
}

- (void)setTabBarController
{
    _tabBarController = [UITabBarController new];
    NCNamesViewController              *names =  [NCNamesViewController new];
    NCMultipleLinesTableViewController *digits = [NCMultipleLinesTableViewController new];
    NCTwoSectionsViewController *twoSections = [NCTwoSectionsViewController new];
    NCBirthDayViewController *birthDay = [NCBirthDayViewController new];
    _tabBarController.viewControllers= @[
                                         [[UINavigationController alloc] initWithRootViewController:names],
                                         [[UINavigationController alloc] initWithRootViewController:digits],
                                         [[UINavigationController alloc] initWithRootViewController:twoSections],
                                         [[UINavigationController alloc] initWithRootViewController:birthDay]
                                         ];
    UITabBarItem  *firstItem  =    _tabBarController.tabBar.items[0];
    UITabBarItem  *secondItem =    _tabBarController.tabBar.items[1];
    UITabBarItem  *thirdItem  =    _tabBarController.tabBar.items[2];
    UITabBarItem  *forthItem  =    _tabBarController.tabBar.items[3];
    
    [firstItem setImage:[UIImage imageNamed:@"star"]];
    [secondItem setImage:[UIImage imageNamed:@"heart"]];
    [thirdItem setImage:[UIImage imageNamed:@"coffee"]];
    [forthItem setImage:[UIImage imageNamed:@"gift"]];
    _tabBarController.view.frame = self.view.bounds;
    [self addChildViewController:_tabBarController];
    [self.view addSubview:_tabBarController.view];
    // [digitsItem setImage:[UIImage imageNamed:@"calculator" ]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
