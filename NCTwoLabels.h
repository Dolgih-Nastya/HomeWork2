//
//  NCTwoLabels.h
//  HomeWork
//
//  Created by Vlad Korzun on 17.05.14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NCTwoLabels : NSObject
@property(nonatomic, strong) NSString *first;
@property(nonatomic, strong) NSString *second;
- (id)initWithFirstLabel:(NSString *)firstLabel andSecondLabel:(NSString *)secondLabel;
@end
