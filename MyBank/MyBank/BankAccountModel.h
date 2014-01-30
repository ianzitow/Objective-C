//
//  BankAccountModel.h
//  MyBank
//
//  Created by iferrei5 on 1/25/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccountModel : NSObject

@property NSNumber *balance;
@property NSMutableArray *transactions;
@property NSString *transaction;

-(void)depositMoney:(float)money;
-(BOOL)withdrawMoney:(float)money;
-(NSNumber*)viewBalance;
-(NSArray*)viewTransactions;

@end
