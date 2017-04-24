//
//  PlayingCard.h
//  Matchizmo
//
//  Created by Andrij Trubchanin on 4/24/17.
//  Copyright © 2017 Andrij Trubchanin. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
