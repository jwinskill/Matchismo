//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Josh Winskill on 9/17/14.
//  Copyright (c) 2014 Josh Winskill. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (strong, nonatomic) Deck *deck;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if (!self.deck) {
        self.deck = [[PlayingCardDeck alloc] init];
    }
    NSString *cardContents = [self.deck drawRandomCard].contents;
    
    if ([sender.currentTitle length] && cardContents) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    } else if(cardContents) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:cardContents forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"OUT" forState:UIControlStateNormal];
    }
}

@end
