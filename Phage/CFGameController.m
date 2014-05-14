//
//  CFGameController.m
//  Phage
//
//  Created by Cole Bratcher on 5/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFGameController.h"
#import "CFCell.h"

#define DEFAULT_NUMBER_OF_SMALL_CELLS 10
#define DEFAULT_NUMBER_OF_MEDIUM_CELLS 5
#define DEFAULT_NUMBER_OF_LARGE_CELLS 3

@implementation CFGameController

+(instancetype)sharedGameController
{
    static CFGameController *sharedGameController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedGameController = [[CFGameController alloc] init];
    });
    return sharedGameController;
}

- (NSDictionary *)setupGameCells
{
    NSMutableArray *smallCells = [[NSMutableArray alloc] init];
    NSMutableArray *mediumCells = [[NSMutableArray alloc] init];
    NSMutableArray *largeCells = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < DEFAULT_NUMBER_OF_SMALL_CELLS; i++) {
        CFCell *smallCell = [[CFCell alloc] initWithAffiliation:AffiliationNeutral
                                                       cellSize:SizeSmall
                                                           type:TypeNormal
                                                       location:CGPointZero];
        [smallCells addObject:smallCell];
    }
    
    for (int i = 0; i < DEFAULT_NUMBER_OF_MEDIUM_CELLS; i++) {
        CFCell *mediumCell = [[CFCell alloc] initWithAffiliation:AffiliationNeutral
                                                        cellSize:SizeMedium
                                                            type:TypeNormal
                                                        location:CGPointZero];
        [mediumCells addObject:mediumCell];
    }
    
    for (int i = 0; i < DEFAULT_NUMBER_OF_LARGE_CELLS; i++) {
        CFCell *largeCell = [[CFCell alloc] initWithAffiliation:AffiliationNeutral
                                                       cellSize:SizeLarge
                                                           type:TypeNormal
                                                       location:CGPointZero];
        [largeCells addObject:largeCell];
    }

    return @{kSmallCellKey : smallCells,
             kMediumCellKey : mediumCells,
             kLargeCellKey : largeCells};
}

- (NSArray *)setupPlayers
{
    
    
    return nil;
}
























@end
