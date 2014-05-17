//
//  NCPaintCellsViewController.h
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NCColorChangable.h"

@interface NCPaintCellsViewController : UIViewController
@property(nonatomic, weak) id<NCColorChangable> delegate;
@end
