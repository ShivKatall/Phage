//
//  CFCell.m
//  Phage
//
//  Created by Cole Bratcher on 5/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFCell.h"

@implementation CFCell

- (instancetype)initWithAffiliation:(CellAffiliation)affiliation
                           cellSize:(CellSize)cellSize
                               type:(CellType)type
                           location:(CGPoint)location
{
    self = [super initWithColor:[UIColor clearColor] size:[self sizeForCellSize:cellSize]];
    if (self) {
        
        _cellAffiliation    = affiliation;
        _cellSize           = cellSize;
        _cellType           = type;
        _location           = location;
    }
    return self;
}

- (CGSize)sizeForCellSize:(CellSize)cellSize
{
    switch (cellSize) {
        case SizeSmall:
            return CGSizeMake(30.0f, 30.0f);
            break;
        case SizeMedium:
            return CGSizeMake(60.0f, 60.0f);
            break;
        case SizeLarge:
            return CGSizeMake(90.0f, 90.0f);
            break;
            
        default:
            return CGSizeMake(30.0f, 30.0f);
            break;
    }
}
   
@end
