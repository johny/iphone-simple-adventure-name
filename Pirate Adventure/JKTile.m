//
//  JKTile.m
//  Pirate Adventure
//
//  Created by Jan Kraus on 13/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import "JKTile.h"

@implementation JKTile


- (UIImage *) getBackgroundImage
{
    NSString *imageName = [NSString stringWithFormat: @"bg_%d.jpg", self.background];
    UIImage *backgroundImage = [UIImage imageNamed: imageName];
    return backgroundImage;    
}

- (id) copyWithZone: (NSZone *) zone
{
    JKTile *tileCopy = [[JKTile allocWithZone: zone] init];
    tileCopy.background = self.background;
    tileCopy.description = self.description;
    tileCopy.position = self.position;
    tileCopy.actionLabel = self.actionLabel;
    tileCopy.weapon = self.weapon;
    tileCopy.armor = self.armor;

    return tileCopy;
}


@end
