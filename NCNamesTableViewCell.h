//
//  NCNamesTableViewCell.h
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NCGenericTableViewCell.h"

@interface NCNamesTableViewCell : UITableViewCell
@property(nonatomic, weak) IBOutlet UILabel *firstLabel;
- (void)setInfo:(id)info;
@end
