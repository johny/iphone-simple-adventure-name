//
//  JKPlayer.h
//  Pirate Adventure
//
//  Created by Jan Kraus on 13/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKArmor.h"
#import "JKWeapon.h"

@interface JKPlayer : NSObject

@property (nonatomic) int health;
@property (nonatomic) CGPoint position;
@property (strong, nonatomic) JKArmor *armor;
@property (strong, nonatomic) JKWeapon *weapon;

- (void) moveBy: (CGPoint) point;
- (JKPlayer*)initWithDefaults;

@end
