//
//  SearchTableViewController.h
//  Calendar
//
//  Created by AhsanMahmood on 02/12/2017.
//  Copyright © 2017 AhsanMahmood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

@interface SearchTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;


@end
