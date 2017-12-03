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

@implementation MonthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


int theDay;//1-31 - so that i can change the displayed number of squares for the days
int theYear;//2017 so i can determine the dates and use this to change the labels
int weekday;//1-7 so i can determine the dates and use this to change the labels
int theMonth;//1-12 so i can determine the dates and use this to change the labels


- (IBAction)lastMonth:(id)sender {
}

- (IBAction)nextMonth:(id)sender {
}


@end

