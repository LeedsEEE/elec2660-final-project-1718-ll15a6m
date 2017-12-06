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



@implementation MonthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    
    
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

