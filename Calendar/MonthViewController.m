//
//  MonthViewController.m
//  Calendar
//
//  Created by AhsanMahmood on 02/12/2017.
//  Copyright © 2017 AhsanMahmood. All rights reserved.
//

#import "MonthViewController.h"

@interface MonthViewController ()

@end

int theYear;
int theMonth;
int firstDayOfMonth;
int numOfDaysInMonth;
int dayOfWeek;



@implementation MonthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _yearLabel.text =[NSString stringWithFormat:@"%d", theYear];
    _monthLabel.text =[NSString stringWithFormat:@"%d", theMonth];
    NSLog(@"dayOfWeek = %d", dayOfWeek);
    NSLog(@"NumberOfDaysInMonth = %d", numOfDaysInMonth);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)yearUpdate{
    if (theMonth>12) {
        theYear++;
    }
    if (theMonth<1) {
        theYear--;
    }
    
}

-(NSUInteger)daysInMonth:(NSDate *)myDate{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSRange rng = [cal rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:myDate];
    NSUInteger numOfDaysInMonth = rng.length;
    
    return numOfDaysInMonth;
}


-(void)dateInfo{
    
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:1];
    [components setMonth:theMonth];
    [components setYear:theYear];
    NSDate * newDate = [calendar dateFromComponents:components];
    NSDateComponents *comps = [gregorian components:NSCalendarUnitWeekday fromDate:newDate];
    dayOfWeek=[comps weekday];
    NSLog(@"NumberOfDaysInMonth%d", dayOfWeek);
    //determines the the first day of the month based of theMonth and theYear from the cell selected.

}

- (IBAction)lastMonth:(id)sender {
    
    theMonth--;
}

- (IBAction)nextMonth:(id)sender {
    
    theMonth++;
}

- (IBAction)back:(id)sender {

        [self dismissViewControllerAnimated:YES completion:NULL];
    
}


@end

