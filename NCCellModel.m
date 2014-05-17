//
//  NCCellModel.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCCellModel.h"

@implementation NCCellModel
-(id)initWithName:(NSString *)name
{
    if ( self = [super init] )
    {
        self.text = name;
        self.isSelected = NO;
    }
    return self;
}
@end
