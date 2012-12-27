//
//  BirdSigntingDataController.h
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/20.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BirdSignting;

@interface BirdSigntingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSigntinglist;

-(NSUInteger) countOfList;

-(BirdSignting *) objectInListAtIndex:(NSUInteger) theIndex;

-(void)addBirdSigntingWithName:(NSString *) inputBirdName location:(NSString *)inputLocation;



@end
