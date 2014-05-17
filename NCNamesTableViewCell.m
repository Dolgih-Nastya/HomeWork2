//
//  NCNamesTableViewCell.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCNamesTableViewCell.h"
#import "NCCellModel.h"

@implementation NCNamesTableViewCell

- (void)setInfo:(id)info
{
    NCCellModel *currentInfo = (NCCellModel *)info;
    self.firstLabel.text = currentInfo.text;
    if(currentInfo.isSelected){
        self.contentView.backgroundColor = [UIColor greenColor];
    } else {
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
   
}

@end
