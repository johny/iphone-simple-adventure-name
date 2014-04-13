//
//  JKTile.h
//  Pirate Adventure
//
//  Created by Jan Kraus on 13/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKArmor.h"
#import "JKWeapon.h"

@interface JKTile : NSObject

@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *actionLabel;
@property (strong, nonatomic) JKArmor *armor;
@property (strong, nonatomic) JKWeapon *weapon;
@property (nonatomic) CGPoint position;
@property (nonatomic) int background;

- (UIImage *) getBackgroundImage;
- (id) copyWithZone: (NSZone *) zone;

@end
