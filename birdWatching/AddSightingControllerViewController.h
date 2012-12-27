//
//  AddSightingControllerViewController.h
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/25.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddSightingViewControllerDelegate;

@interface AddSightingControllerViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *birdName;
@property (weak, nonatomic) IBOutlet UITextField *birdLocation;
@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;

- (IBAction)Cancel:(id)sender;
- (IBAction)Done:(id)sender;

@end

@protocol AddSightingViewControllerDelegate <NSObject>

- (void)addSightingViewControllerDidCancel:(AddSightingControllerViewController *)controller;
- (void)addSightingViewControllerDidFinish:(AddSightingControllerViewController *)controller name:(NSString *)name location:(NSString *)location;

@end