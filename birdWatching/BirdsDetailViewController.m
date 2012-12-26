//
//  BirdsDetailViewController.m
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import "BirdsDetailViewController.h"

#import "BirdsSighting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

@synthesize sighting = _sighting, birdNameLavel = _birdNameLavel, locationLabel = _locationLabel, dateLabel = _dateLabel;

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
 */

-(void) setSighting:(BirdsSighting *)newSighting{
    if(_sighting!=newSighting){
        _sighting = newSighting;
        
        [self configureView];
    }
}

- (void)configureView
{
    
    BirdsSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    
    if(formatter == nil){
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        
    }
    
    if(theSighting){
        self.birdNameLavel.text = theSighting.name;
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

-(void)viewDidUnload{
    self.sighting = nil;
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
