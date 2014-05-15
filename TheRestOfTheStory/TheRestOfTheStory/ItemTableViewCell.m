//
//  ItemTableViewCell.m
//  TheRestOfTheStory
//
//  Created by CS491 on 5/15/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "ItemTableViewCell.h"

@implementation ItemTableViewCell

-(instancetype)init{
    self = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ItemTableViewCell class]) owner:nil options:nil][0];
    
    
    
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
