//
//  BirdsDetailViewController.h
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdsSighting;

@interface BirdsDetailViewController : UITableViewController

@property (strong, nonatomic) BirdsSighting *sighting;
@property (weak, nonatomic) IBOutlet UILabel *birdNameLavel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;


@end
