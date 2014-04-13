//
//  JKTileFactory.m
//  Pirate Adventure
//
//  Created by Jan Kraus on 13/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import "JKTileFactory.h"
#import "JKTile.h"
#import "JKArmor.h"
#import "JKWeapon.h"

@implementation JKTileFactory

+ (NSMutableArray*) createTiles
{
    
    // Finally, return array and return it;
    NSMutableArray *tiles = [[NSMutableArray alloc] init];
 
    // create first row
    NSMutableArray *row = [[NSMutableArray alloc] init];
    
    JKTile *workTile = [[JKTile alloc] init];
    
    // [0,0]
    workTile.position = CGPointMake(0,0);
    workTile.description = @"Znajdujesz się na opuszczonym kawałku plaży. Właściwie dookoła wszędzie tylko piasek i piasek. W oddali przed Tobą na horyzoncie widać zarysy lasu. Za plecami szumi morze a fale rozbijają się o piaszczysty brzeg.";
    workTile.background = 1;
    workTile.actionLabel = nil;
    [row addObject: [workTile copy]];
    
    // [0,1]
    workTile.position = CGPointMake(0,1);
    workTile.description = @"";
    workTile.background = 0;
    [row addObject: [workTile copy]];
    
    // [0,2]
    workTile.position = CGPointMake(0,2);
    workTile.description = @"";
    workTile.background = 0;
    [row addObject: [workTile copy]];
    
    [tiles addObject: row];
    
    return tiles;
}

@end
