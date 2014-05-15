//
//  ThirdViewController.m
//  TheRestOfTheStory
//
//  Created by CS491 on 5/15/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (strong, nonatomic) IBOutlet UIView *PopUpView;
@property (strong, nonatomic) IBOutlet UIView *BigView;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;

@end

@implementation ThirdViewController

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
    self.title = @"Third";
    
    //Adds a view from your nib
    _PopUpView.center = self.view.center;
    _PopUpView.alpha = 0; //Make invisible
    [self.view addSubview:_PopUpView];
    
    //Makes visible
    [UIView animateWithDuration:1.0 animations:^{
        _PopUpView.alpha = 1;
    }];
    
    //Initialize this scroll view to have the big view inside it
    [_ScrollView addSubview:_BigView];
    _ScrollView.contentSize = _BigView.frame.size;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapGoAway:(id)sender {
    
    //Makes invisible
    [UIView animateWithDuration:1.0 animations:^{
        _PopUpView.alpha = 0;
    } completion:^(BOOL finished) {
        //Removes popup view from screen
        [_PopUpView removeFromSuperview];
    }];
    
    
}

@end
