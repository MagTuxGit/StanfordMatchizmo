//
//  CardGameViewController.m
//  Matchizmo
//
//  Created by Andrij Trubchanin on 4/24/17.
//  Copyright © 2017 Andrij Trubchanin. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong, nonatomic) Deck *cardDeck;
@end

@implementation CardGameViewController

- (Deck *)cardDeck {
    if (!_cardDeck) _cardDeck = [[PlayingCardDeck alloc] init];
    return _cardDeck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    //NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *nextCard = [self.cardDeck drawRandomCard];
        // ok, maybe this is a better solution
        if (nextCard) {
            UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:nextCard.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

@end
