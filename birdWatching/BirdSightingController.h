//
//  BirdSightingController.h
//  birdWatching
//
//  Created by 湯　源遠 on 12/12/22.
//  Copyright (c) 2012年 tyy. All rights reserved.
//

#import <Foundation/Foundation.h>

// QA01: start
// ここでインポートするやり方と、@classの形で前方宣言のやり方はどう違うのですか？
//#import "BirdsSighting.h"

@class BirdsSighting;

// QA01: end

@interface BirdSightingController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

-(NSUInteger) countOfList;

-(BirdsSighting *) objectInListAtIndex:(NSUInteger) theIndex;

// QA02: start
// ここで、またポイントの質問ですが、下記の*を削除すると、「NSStringは値で引数を渡せません。それで*「ポイント」で渡すしか方法がありません。」なんで値で渡せないの？
-(void) addBirdSightingWithName:(NSString *) inputName location:(NSString *) inputLocation;

// QA02: end



@end
