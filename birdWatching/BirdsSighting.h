//
//  BirdsSighting.h
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdsSighting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

-(id) initWithName:(NSString *) name location:(NSString *) location date:(NSDate *) date;

@end
