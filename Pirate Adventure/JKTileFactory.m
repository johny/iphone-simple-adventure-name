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
 
    // create first column
    NSMutableArray *col0 = [[NSMutableArray alloc] init];
    
    JKTile *workTile = [[JKTile alloc] init];
    
    // [0,0]
    workTile.position = CGPointMake(0,0);
    workTile.description = @"Znajdujesz się na opuszczonym kawałku plaży. Właściwie dookoła wszędzie tylko piasek i piasek. W oddali przed Tobą na horyzoncie widać zarysy lasu. Za plecami szumi morze a fale rozbijają się o piaszczysty brzeg.";
    workTile.background = 1;
    workTile.actionLabel = nil;
    [col0 addObject: [workTile copy]];
    
    // [0,1]
    workTile.position = CGPointMake(0,1);
    workTile.description = @"Przed Tobą długi pas piaszczystego brzegu. Nic specjalnego tu nie ma.";
    workTile.background = 0;
    workTile.actionLabel = nil;
    [col0 addObject: [workTile copy]];
    
    // [0,2]
    workTile.position = CGPointMake(0,2);
    workTile.description = @"W oddali na piaszczystym brzegu dostrzegasz coś błyszącego, jakby metalowy przedmiot. Podchodzisz bliżej i wśród piasku znajdujesz całkiem dobrze wykonaną szabelkę!";
    workTile.background = 0;
    workTile.actionLabel = @"Weź szablę";
    [col0 addObject: [workTile copy]];
    
    [tiles addObject: col0];
    
    // create second column
    NSMutableArray *col1 = [[NSMutableArray alloc] init];
    
    // [1,0]
    workTile.position = CGPointMake(1,0);
    workTile.description = @"Wąż! Wśród niewielkiej trawy dostrzegasz węża! Jest całkiem sporych rozmiarów i wygląda groźnie. Możesz zostawić go w spokoju albo...";
    workTile.background = 1;
    workTile.actionLabel = @"Prowokuj";
    [col1 addObject: [workTile copy]];
    
    // [1,1]
    workTile.position = CGPointMake(1,1);
    workTile.description = @"Pusto dookoła.";
    workTile.background = 0;
    workTile.actionLabel = nil;
    [col1 addObject: [workTile copy]];
    
    // [1,2]
    workTile.position = CGPointMake(1,2);
    workTile.description = @"Na brzegu zauwazasz rozbitą skrzynię. Jej okucia są zniszczone i jest otwarta. Zaglądasz do środka, ale na dnie zostało tylko kilka miedziaków. Ktoś tu był przed Tobą!";
    workTile.background = 1;
    workTile.actionLabel = @"Zgarnij miedziaki";
    [col1 addObject: [workTile copy]];
    
    [tiles addObject: col1];
    
    // create third column
    NSMutableArray *col2 = [[NSMutableArray alloc] init];
    
    // [2,0]
    workTile.position = CGPointMake(2,0);
    workTile.description = @"Trafiasz na skaliste wybrzeże. Idealne miejsce, żeby trochę potrenować elementy walki. Ale ostrożnie, możesz się skaleczyć na skałach!";
    workTile.background = 1;
    workTile.actionLabel = @"Trenuj";
    [col2 addObject: [workTile copy]];
    
    // [2,1]
    workTile.position = CGPointMake(2,1);
    workTile.description = @"Tubylcy! Już od jakiegoś czasu miałeś wrażenie, że obserwuje Cię nie jedna para oczu. I nie myliłeś się. Przed Tobą nagle wyrasta grupa tubylców. I nie wyglądają przyjaźnie...";
    workTile.background = 1;
    workTile.actionLabel = @"Spróbuj się porozumieć";
    [col2 addObject: [workTile copy]];
    
    // [2,2]
    workTile.position = CGPointMake(2,2);
    workTile.description = @"Na kamieniu, nad strumieniem zauważasz stalowy hełm. Widocznie ktoś zdjął go z głowy gdy zaspokajał pragnienie i zapomniał go ze sobą zabrać! Co za okazja!";
    workTile.background = 0;
    workTile.actionLabel = @"Bierzesz hełm";
    [col2 addObject: [workTile copy]];
    
    [tiles addObject: col2];
    
    // create fourth column
    NSMutableArray *col3 = [[NSMutableArray alloc] init];
    
    // [3,0]
    workTile.position = CGPointMake(3,0);
    workTile.description = @"Co to leży w trawie? Całkiem fajnie wyglądająca stalowa zbroja! Może będzie ci potrzeba? Kto wie?";
    workTile.background = 1;
    workTile.actionLabel = @"Załóż zbroję";
    [col3 addObject: [workTile copy]];
    
    // [3,1]
    workTile.position = CGPointMake(3,1);
    workTile.description = @"Nieopodal małej grupy drzew zauważasz drewnianą beczułkę. Nie wygląda na starą a jej położenie wskazuje na to, że ktoś ją tam umieścił celowo.";
    workTile.background = 1;
    workTile.actionLabel = @"Sprawdź zawartość";
    [col3 addObject: [workTile copy]];
    
    // [3,2]
    workTile.position = CGPointMake(3,2);
    workTile.description = @"Okrutny pirat, z hakiem zamiast dłoni siedzi na skale obok dużej drewnianej skrzyni. \n\n\"Chodź bliżej łajdaku a rozpruję Ci brzuch moim hakiem!\" - krzyczy";
    workTile.background = 1;
    workTile.actionLabel = @"Atakuj";
    [col3 addObject: [workTile copy]];
    
    [tiles addObject: col3];
    
    
    return tiles;
}

@end
