//
//  CollectionViewController.h
//  Calendar
//
//  Created by AhsanMahmood on 02/12/2017.
//  Copyright © 2017 AhsanMahmood. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKitUI/EventKitUI.h>
#import "CollectionViewCell.h"
#import "CollectionReusableView.h"
#import "MonthViewController.h"

@interface CollectionViewController : UICollectionViewController < UICollectionViewDataSource, UICollectionViewDelegate, EKEventEditViewDelegate >

@property(strong, nonatomic) NSArray *indexPaths;

- (IBAction)addEvent:(id)sender;

-(void)getAccess;


@end
