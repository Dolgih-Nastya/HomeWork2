//
//  NCOneDigitTableViewCell.m
//  HomeWork
//
//  Created by Vlad Korzun on 17.05.14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCOneDigitTableViewCell.h"
#import "NCCellModel.h"

@implementation NCOneDigitTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setInfo:(id)info
{
    if([info isKindOfClass:[NSString class]]){
        self.firstLabel.text = info;
   
    }
}



@end
