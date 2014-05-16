//
//  SecondViewController.m
//  TheRestOfTheStory
//
//  Created by CS491 on 5/15/14.
//  Copyright (c) 2014 MattIsTheGreatest. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ItemTableViewCell.h"
#import "DataSingleton.h"

@interface SecondViewController ()
@property NSArray *toDoList;
@end

@implementation SecondViewController

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
    self.title = @"Second";
    
    //Accessing properties on a singleton
    _toDoList = [DataSingleton sharedInstance].dataArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTapDismiss:(id)sender {
    //Dismisses a modal VC
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)showThirdVC:(id)sender {
    ThirdViewController *thirdVC =  [[ThirdViewController alloc] initWithNibName:NSStringFromClass([ThirdViewController class]) bundle:nil];
    
    [self.navigationController pushViewController:thirdVC animated:YES];
}

#pragma mark - UITableViewDatasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _toDoList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemTableViewCell"];
    if (!cell) {
        cell = [[ItemTableViewCell alloc] init];
    }
    
    cell.ItemNameLbel.text = _toDoList[indexPath.row];
    cell.ItemImageView.image = [UIImage imageNamed:@"cat.jpg"];
    
    return cell;
}

@end
