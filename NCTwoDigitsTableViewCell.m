//
//  NCTwoDigitsTableViewCell.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCTwoDigitsTableViewCell.h"
#import "NCTwoLabels.h"

@implementation NCTwoDigitsTableViewCell

- (void)setInfo:(NCTwoLabels *)info
{
    self.firstLabel.text = info.first;
    self.secondLabel.text = info.second;
}

@end
