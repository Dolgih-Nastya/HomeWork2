//
//  NCGenericTableViewCell.h
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NCGenericTableViewCell : UITableViewCell

- (void)setInfo:(id)info;

@property(nonatomic, strong) IBOutlet UILabel *firstLabel;
@property(nonatomic, strong) IBOutlet UILabel *secondLabel;

@end
