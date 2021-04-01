//
//  CFViewController.m
//  cafe_sdk
//
//  Created by xhp281 on 04/01/2021.
//  Copyright (c) 2021 xhp281. All rights reserved.
//

#import "CFViewController.h"
#import <cafe_sdk/CafeManager.h>

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)openCafeAction:(id)sender {
    [[CafeManager new] openCafeMainViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
