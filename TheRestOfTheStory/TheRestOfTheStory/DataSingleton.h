//
//  DataSingleton.h
//  TheRestOfTheStory
//
//  Created by CS491 on 5/16/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSingleton : NSObject

@property NSArray *dataArray;

+ (instancetype)sharedInstance;
@end
