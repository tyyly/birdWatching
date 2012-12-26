//
//  BirdsSighting.m
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import "BirdsSighting.h"


@implementation BirdsSighting

@synthesize name = _name, location=_location, date=_date;

-(id) initWithName:(NSString *)name location:(NSString *)location date:(NSDate *) date
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
