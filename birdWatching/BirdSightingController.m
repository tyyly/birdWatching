//
//  BirdSightingController.m
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import "BirdSightingController.h"
#import "BirdsSighting.h"

// コメント：ここでinitializeDefaultDateListというメソッドを宣言することで、
//         ほかのクラスが使えないように、プライベートメソッドになります。
@interface BirdSightingController()

-(void) initializeDefaultDateList;

@end

// コメント：エンド

@implementation BirdSightingController

@synthesize masterBirdSightingList = _masterBirdSightingList;

-(void)initializeDefaultDateList{
    
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    
    self.masterBirdSightingList = sightingList;
    
    [self addBirdSightingWithName:@"pogen" location:@"every where"];
    
}

-(void)setMasterBirdSightingList:(NSMutableArray *)newList{
    
    if (_masterBirdSightingList != newList) {
        
        _masterBirdSightingList = [newList mutableCopy];
        
    }
}

-(id)init{
    
    if (self = [super init]) {
        [self initializeDefaultDateList];
        return self;
    }
    return nil;
}

-(NSUInteger)countOfList{
    
    NSUInteger count;
    
    count = [self.masterBirdSightingList count];
    
    return count;
}

-(BirdsSighting *)objectInListAtIndex:(NSUInteger)theIndex{
    
    return [self.masterBirdSightingList objectAtIndex:theIndex];
    
}

-(void) addBirdSightingWithName:(NSString *)inputName location:(NSString *)inputLocation{
    
    BirdsSighting *sighting;
    NSDate *today = [NSDate date];
    
    sighting = [[BirdsSighting alloc] initWithName:inputName location:inputLocation date:today];
    
    [self.masterBirdSightingList addObject:sighting];
    
}

@end
