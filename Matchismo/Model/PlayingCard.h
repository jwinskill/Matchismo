//
//  PlayingCard.h
//  Matchismo
//
//  Created by Josh Winskill on 9/18/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
