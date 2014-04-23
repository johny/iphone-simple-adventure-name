//
//  JKPlayer.m
//  Pirate Adventure
//
//  Created by Jan Kraus on 13/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import "JKPlayer.h"

@implementation JKPlayer

- (JKPlayer*)initWithDefaults
{
    
    self = [self init];
    
    self.health = 100;
    self.position = CGPointMake(0,0);
    
    // setup weapon
    JKWeapon *handsWeapon = [[JKWeapon alloc] init];
    handsWeapon.name = @"Gołe pięści";
    handsWeapon.damage = 5;
    self.weapon = handsWeapon;
    
    // setup armor
    JKArmor *clothesArmor = [[JKArmor alloc] init];
    clothesArmor.name = @"Szmaciane ubranie";
    clothesArmor.defense = 1;
    self.armor = clothesArmor;    
    
    return self;
}

- (void) moveBy: (CGPoint) point
{
    self.position = CGPointMake(self.position.x + point.x, self.position.y + point.y);
}

@end
