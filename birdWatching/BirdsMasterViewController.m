//
//  BirdsMasterViewController.m
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/19.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import "BirdsMasterViewController.h"

#import "BirdsDetailViewController.h"

#import "BirdSigntingDataController.h"

#import "BirdSignting.h"

#import "AddSightingControllerViewController.h"

@interface BirdsMasterViewController()
    <AddSightingViewControllerDelegate>;
@end

/*
@interface BirdsMasterViewController () {
    NSMutableArray *_objects;
}
@end
*/

@implementation BirdsMasterViewController

@synthesize dataController = _dataController;

-(void)addSightingViewControllerDidFinish:(AddSightingControllerViewController *)controller name:(NSString *)name location:(NSString *)location{
    if ([name length] || [location length]) {
        [[self dataController] addBirdSigntingWithName:name location:location];
        [[self tableView] reloadData];
    }
}

-(void)addSightingViewControllerDidCancel:(AddSightingControllerViewController *)controller{
    [self dismissViewControllerAnimated:YES completion:NULL];
}


- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /*
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}*/

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIndentifier = @"BirdSightingCell";
    
    static NSDateFormatter *dateFormatter = nil;
    
    if (dateFormatter == nil) {
        
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        
    }
    
    UITableViewCell *Cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    BirdSignting *signtingAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    
    [[Cell textLabel] setText:signtingAtIndex.name];
    [[Cell detailTextLabel] setText:[dateFormatter stringFromDate:(NSDate *)signtingAtIndex.date]];
    
    return Cell;
    
    /*
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDate *object = _objects[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
     */
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

/*- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowSightingDetails"]) {
        BirdsDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.sighting = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
    } else if([[segue identifier] isEqualToString:@"ShowAddSightingView"]){
        AddSightingControllerViewController *addController = (AddSightingControllerViewController *)[[[segue destinationViewController] viewControllers] objectAtIndex:0];
        addController.delegate = self;
    }
}

@end
