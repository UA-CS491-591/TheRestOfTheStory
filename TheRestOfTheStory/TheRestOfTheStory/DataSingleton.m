//
//  DataSingleton.m
//  TheRestOfTheStory
//
//  Created by CS491 on 5/16/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "DataSingleton.h"

@implementation DataSingleton

+ (instancetype)sharedInstance {
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

@end
