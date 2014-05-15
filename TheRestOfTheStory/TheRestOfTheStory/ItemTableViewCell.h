//
//  ItemTableViewCell.h
//  TheRestOfTheStory
//
//  Created by CS491 on 5/15/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *ItemNameLbel;
@property (weak, nonatomic) IBOutlet UIImageView *ItemImageView;

@end
