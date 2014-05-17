//
//  NCCellModel.h
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NCCellModel : NSObject
@property(nonatomic, strong) NSString *text;
@property BOOL isSelected;
-(id)initWithName:(NSString *)name;
@end
