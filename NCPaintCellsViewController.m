//
//  NCPaintCellsViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCPaintCellsViewController.h"

@interface NCPaintCellsViewController ()
@end

@implementation NCPaintCellsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)okButtonDidClick:(id)sender
{
    [self.delegate update];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)paintCellsButtonDidClick:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
