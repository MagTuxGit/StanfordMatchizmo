//
//  Card.m
//  Matchizmo
//
//  Created by Andrij Trubchanin on 4/24/17.
//  Copyright © 2017 Andrij Trubchanin. All rights reserved.
//

#import "Card.h"

@implementation Card
- (int)match:(Card *)card {
    int score = 0;
    
    if ([self.contents isEqualToString:card.contents]) {
        score = 1;
    }
    
    return score;
}
@end
