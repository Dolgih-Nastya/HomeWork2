//
//  NCBirthDayViewController.m
//  HomeWork
//
//  Created by Анастасия Долгих on 5/16/14.
//  Copyright (c) 2014 Anastasia. All rights reserved.
//

#import "NCBirthDayViewController.h"

@interface NCBirthDayViewController ()
@property(nonatomic, strong) NSMutableArray *days;
@property(nonatomic, strong) NSArray *months;
@property(nonatomic, strong) NSMutableArray *years;
@property long component;
@property long row;
@property(nonatomic, strong) NSString *day;
@property(nonatomic, strong) NSString *month;
@property(nonatomic, strong) NSString *year;
@property(nonatomic, strong) IBOutlet UILabel *labelResult;
@end

@implementation NCBirthDayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"second";
    self.days =  [NSMutableArray new];
    self.years = [NSMutableArray new];
    for (int i = 1; i<=31; i++)
    {
        [self.days addObject:@(i).stringValue];
    }
    self.months = @[@"Январь", @"Февраль", @"Март", @"Апрель", @"Май",
                    @"Июнь",@"Июль",@"Август",@"Сентябрь",@"Октябрь",
                    @"Ноябрь",@"Декабрь"];
    for (int i = 1930; i<=2014; i++)
    {
        [self.years addObject:@(i).stringValue];
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            return self.days.count;
        case 1:
            return self.months.count;
        case 2:
            return self.years.count;
        default:
            return 0;
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (component) {
        case 0:
            self.day = self.days[row];
            break;
        case 1:
            self.month = self.months[row];
            break;
        case 2:
            self.year = self.years[row];
            break;
    }
}

- (IBAction)doneButtonDidClick:(id)sender
{
   NSString *result = @"";
   result = [[[result stringByAppendingString:self.day] stringByAppendingString:self.month] stringByAppendingString:self.year];
    self.labelResult.text = result;

}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0:
             return self.days[row];
        case 1:
             return self.months[row];
        case 2:
            return self.years[row];
        default:
            return @"";
    }
    
}

@end
