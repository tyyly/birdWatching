//
//  BirdSigntingDataController.m
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/20.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import "BirdSigntingDataController.h"
#import "BirdSignting.h"

@interface BirdSigntingDataController()

-(void) initializeDefaulDataList;

@end

@implementation BirdSigntingDataController

@synthesize masterBirdSigntinglist = _masterBirdSigntinglist;

-(void) initializeDefaulDataList{
    NSMutableArray *signtingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSigntinglist = signtingList;
    
    [self addBirdSigntingWithName:@"pigeon" location:@"Everywhere"];
    
}

-(void) setMasterBirdSigntinglist:(NSMutableArray *) newList{
    
    if (_masterBirdSigntinglist != newList) {
        _masterBirdSigntinglist = [newList mutableCopy];
    }
}

-(id) init{
    if (self = [super init]) {
        [self initializeDefaulDataList];
        return self;
    }
    
    return nil;
}

-(NSUInteger) countOfList{
    return [self.masterBirdSigntinglist count];
}

-(BirdSignting *) objectInListAtIndex:(NSUInteger) theIndex{

    return [self.masterBirdSigntinglist objectAtIndex:theIndex];
}

-(void) addBirdSigntingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation{
    
    BirdSignting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdSignting alloc] initWithName:inputBirdName location:inputLocation date:today];
    
    [self.masterBirdSigntinglist addObject:sighting];
    
}

@end
