//
//  BirdSignting.h
//  BirdWatching
//
//  Created by 株式会社 ガゼル on 2012/12/19.
//  Copyright (c) 2012年 study. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BirdSignting : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *location;
@property (nonatomic, strong) NSDate *date;

-(id) initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;


@end
