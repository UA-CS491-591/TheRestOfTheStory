//
//  TestViewController.m
//  TheRestOfTheStory
//
//  Created by CS491 on 5/15/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "TestViewController.h"
#import "SecondViewController.h"
#import "DataSingleton.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Test";
    
    [DataSingleton sharedInstance].dataArray = @[@"First Item", @"Second Item"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapShowSecondVC:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] initWithNibName:NSStringFromClass([SecondViewController class]) bundle:nil];
    
    //One way to do it...
    [self presentViewController:secondVC animated:YES completion:nil];
}
- (IBAction)didTapSecondVCWithNav:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] initWithNibName:NSStringFromClass([SecondViewController class]) bundle:nil];
    
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
