//
//  MyBankViewController.m
//  MyBank
//
//  Created by iferrei5 on 1/24/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import "MyBankViewController.h"

@interface MyBankViewController ()

@end

@implementation MyBankViewController

-(void)updateLabel
{
    [self.balanceLabel setText:[NSString stringWithFormat:@"Balance: $%.2f", self.account.viewBalance.floatValue]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.account = [[BankAccountModel alloc] init];
    [self updateLabel];
}

-(IBAction)depositPressed:(id)sender
{
    if ([self.money.text floatValue] > 0)
    {
        [self.account depositMoney:[self.money.text floatValue]];
        [self updateLabel];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid operation" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }

}

-(IBAction)withdrawPressed:(id)sender
{
    if ([self.money.text floatValue] > 0)
    {
        if (![self.account withdrawMoney:[self.money.text floatValue]])
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You don't have enough money" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];
        }
        [self updateLabel];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Invalid operation" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TransactionsViewController *nextViewController = segue.destinationViewController;
    nextViewController.transactions = self.account.transactions;
}

@end
