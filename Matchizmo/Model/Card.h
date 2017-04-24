//
//  Card.h
//  Matchizmo
//
//  Created by Andrij Trubchanin on 4/24/17.
//  Copyright © 2017 Andrij Trubchanin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
- (int) match:(Card *)card;
@end
