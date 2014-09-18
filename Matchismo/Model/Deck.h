//
//  Deck.h
//  Matchismo
//
//  Created by Josh Winskill on 9/18/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard: (Card *)card atTop: (BOOL)atTop;
- (void) addCard: (Card *)card;

- (Card *)drawRandomCard;

@end
