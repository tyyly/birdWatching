//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/19.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdSignting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

@synthesize nameLabel = _nameLabel, locationLabel = _locationLabel, dateLabel = _dateLabel;


#pragma mark - Managing the detail item
/*
- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}
*/

- (void)setSighting:(BirdSignting *) newSighting
{
    if (_sighting != newSighting) {
        _sighting = newSighting;
        // ビューを更新する
        [self configureView];
    }
}

- (void)configureView
{
    // ユーザインターフェイスを詳細アイテム用に更新する
    BirdSignting *theSighting = self.sighting;
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theSighting) {
        self.nameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theSighting.date];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    self.sighting = nil;
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
