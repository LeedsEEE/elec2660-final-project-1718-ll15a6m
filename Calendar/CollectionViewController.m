//
//  CollectionViewController.m
//  Calendar
//
//  Created by AhsanMahmood on 02/12/2017.
//  Copyright © 2017 AhsanMahmood. All rights reserved.
//

#import "CollectionViewController.h"


@interface CollectionViewController ()
{

NSArray *month;
    
NSArray *year;

}
@end

@implementation CollectionViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.indexPaths = [NSArray array];
    }
    return self;
}


static NSString * const reuseIdentifier = @"Cell";



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    month = @[ @"JAN" , @"FEB", @"MAR", @"APR", @"MAY", @"JUN", @"JUL", @"AUG", @"SEP", @"OCT", @"NOV", @"DEC" ];
    
    year = @[ @"2017" , @"2018", @"2019", @"2020", @"2021"];
    
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 3, 20, 3);

    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showMonthView"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        self.indexPaths = [NSArray array];
        MonthViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        destViewController.yearLabel = year[indexPath.section];
        destViewController.monthLabel = month[indexPath.item];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
    
}
*/


#pragma mark <UICollectionV	iewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return year.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return month.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.Label1.text = month[indexPath.row];
    cell.btn.tag = indexPath.row;
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{

    

        CollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];

        header.sectionTitle.text = year[indexPath.section];


    
    return header;
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPaths {
	return YES;
}



// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPaths {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

- (IBAction)addEvent:(id)sender {
    
    EKEventStore *eventStore = [[EKEventStore alloc] init];
    EKEventEditViewController *controller = [[EKEventEditViewController alloc] init];
    controller.eventStore = eventStore;
    controller.editViewDelegate = self;
    [self presentModalViewController: controller animated:YES];
    
    EKEventStore *store = [[EKEventStore alloc] init];
    if([store respondsToSelector:@selector(requestAccessToEntityType:completion:)]) {
        
        [store requestAccessToEntityType:EKEntityTypeEvent completion:^(BOOL granted, NSError *error) {
            /* This code will run when uses has made his/her choice */
        }];
    }
}
    

    @end

    
