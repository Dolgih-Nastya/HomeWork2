//
//  NCSecondHelloViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCSecondHelloViewController.h"

@interface NCSecondHelloViewController ()

@end

@implementation NCSecondHelloViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonDidClick:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
