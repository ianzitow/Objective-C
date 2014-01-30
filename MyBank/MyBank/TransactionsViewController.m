//
//  TransactionsViewController.m
//  MyBank
//
//  Created by iferrei5 on 1/26/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import "TransactionsViewController.h"

@interface TransactionsViewController ()

@end

@implementation TransactionsViewController

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
	// Do any additional setup after loading the view.
    self.transactionsViewList.text = [self.transactions componentsJoinedByString:@"\n"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
