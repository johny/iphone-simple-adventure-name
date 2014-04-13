//
//  JKViewController.h
//  Pirate Adventure
//
//  Created by Jan Kraus on 12/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKPlayer.h"
#import "JKTileFactory.h"

@interface JKViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lifeLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;
@property (strong, nonatomic) IBOutlet UIImageView *background;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;

@property (strong, nonatomic) JKPlayer *player;
@property (strong, nonatomic) NSMutableArray *map;




@end
