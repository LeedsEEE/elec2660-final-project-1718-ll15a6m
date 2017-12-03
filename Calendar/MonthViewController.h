//
//  MonthViewController.h
//  Calendar
//
//  Created by AhsanMahmood on 02/12/2017.
//  Copyright © 2017 AhsanMahmood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MonthViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@property (weak, nonatomic) IBOutlet UILabel *monthLabel;

- (IBAction)lastMonth:(id)sender;

- (IBAction)nextMonth:(id)sender;

@end
