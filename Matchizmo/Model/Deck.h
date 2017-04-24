//
//  Deck.h
//  Matchizmo
//
//  Created by Andrij Trubchanin on 4/24/17.
//  Copyright © 2017 Andrij Trubchanin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
