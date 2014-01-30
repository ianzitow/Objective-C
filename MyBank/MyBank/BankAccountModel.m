//
//  BankAccountModel.m
//  MyBank
//
//  Created by iferrei5 on 1/25/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import "BankAccountModel.h"

@implementation BankAccountModel

-(id)init
{
    self = [super init];
    if(self){
        self.balance = @0.0;
        self.transactions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)depositMoney:(float)money
{
    self.balance = @([self.balance floatValue] + money);
    NSLog(@"$%.2f were deposited. Balance: $%.2f", money, [self.balance floatValue]);
    self.transaction = [NSString stringWithFormat:@"$%.2f were deposited. Balance: $%.2f", money, [self.balance floatValue]];
    [self.transactions addObject:self.transaction];
}

-(BOOL)withdrawMoney:(float)money
{
    if(money <= self.balance.floatValue){
        self.balance = @([self.balance floatValue] - money);
        NSLog(@"$%.2f were withdrawn. Balance: $%.2f", money, [self.balance floatValue]);
        self.transaction = [NSString stringWithFormat:@"$%.2f were withdrawn. Balance: $%.2f", money, [self.balance floatValue]];
        [self.transactions addObject:self.transaction];
        return YES;
    } else {
        NSLog(@"Insufficient funds for withdraw. Balance: $%.2f, Requested: $%.2f", [self.balance floatValue], money);
        return NO;
    }
}

-(NSNumber*)viewBalance
{
    return self.balance;
}

-(NSArray*)viewTransactions
{
    NSArray *copyTransactions = [[NSArray alloc] initWithArray:self.transactions];
    return copyTransactions;
}

@end
