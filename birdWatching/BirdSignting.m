//
//  BirdSignting.m
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/19.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import "BirdSignting.h"

@implementation BirdSignting

@synthesize name = _name, location = _location, date = _date;

-(id) initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        _name = name;
        _location = location;
        _date = date;
        
        return self;
    }
    
    return nil;
    
}


@end
