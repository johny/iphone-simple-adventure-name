//
//  JKViewController.m
//  Pirate Adventure
//
//  Created by Jan Kraus on 12/04/14.
//  Copyright (c) 2014 Jan Kraus. All rights reserved.
//

#import "JKViewController.h"
#import "JKTile.h"

@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self initGame];
    
}

- (void) initGame
{
    [self initPlayer];
    [self initMap];
    [self updateGame];
}

- (void) initPlayer
{
    self.player = [[JKPlayer alloc] initWithDefaults];
}

- (void)initMap
{
    self.map = [JKTileFactory createTiles];
}

- (void)updateGame
{
    [self updateHUD];
    [self updateDisplay];
    [self updateControls];
}

- (void)updateDisplay
{
    JKTile* tile = [self getCurrentTile];
    self.background.image = [tile getBackgroundImage];
    self.storyLabel.text = tile.description;
}

- (void)updateControls
{
    CGPoint pos = self.player.position;
    
    if (pos.x == 0) {
        self.westButton.hidden = YES;
    } else {
        self.westButton.hidden = NO;
    }
    
    if (pos.x == 3) {
        self.eastButton.hidden = YES;
    } else {
        self.eastButton.hidden = NO;
    }

    if(pos.y == 0) {
        self.southButton.hidden = YES;
    } else {
        self.southButton.hidden = NO;
    }
    
    if (pos.y == 2) {
        self.northButton.hidden = YES;
    } else {
        self.northButton.hidden = NO;
    }
    
    JKTile* tile = [self getCurrentTile];
    if(tile.actionLabel == nil){
        self.actionButton.hidden = YES;
    } else{
        self.actionButton.hidden = NO;
        [self.actionButton setTitle: tile.actionLabel forState: UIControlStateNormal];
    }
    
}

- (void)updateHUD
{
    NSLog(@"%d", self.player.health);
    self.lifeLabel.text = [NSString stringWithFormat: @"%d", self.player.health];
    self.armorLabel.text = [NSString stringWithFormat: @"%d / %@", self.player.armor.defense, self.player.armor.name];
    self.damageLabel.text = [NSString stringWithFormat: @"%d / %@", self.player.weapon.damage, self.player.weapon.name];
    
    self.positionLabel.text = [NSString stringWithFormat: @"[%d,%d]", (int) self.player.position.x, (int) self.player.position.y];
}

- (JKTile *)getCurrentTile
{
    CGPoint pos = self.player.position;
    JKTile* tile = [[self.map objectAtIndex: (int) pos.x] objectAtIndex: (int) pos.y];
    return tile;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nButtonPressed:(UIButton *)sender {
    [self.player moveBy: CGPointMake(0,1)];
    [self updateGame];
}

- (IBAction)wButtonPressed:(UIButton *)sender {
    [self.player moveBy: CGPointMake(-1,0)];
    [self updateGame];
}

- (IBAction)eButtonPressed:(UIButton *)sender {
    [self.player moveBy: CGPointMake(1, 0)];
    [self updateGame];
}

- (IBAction)sButtonPressed:(id)sender {
    [self.player moveBy: CGPointMake(0, -1)];
    [self updateGame];
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
}
@end
