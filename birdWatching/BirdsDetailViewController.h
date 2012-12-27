//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/19.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdSignting;

@interface BirdsDetailViewController : UITableViewController

@property (strong, nonatomic) BirdSignting *sighting;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
