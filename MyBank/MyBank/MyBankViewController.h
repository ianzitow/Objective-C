//
//  MyBankViewController.h
//  MyBank
//
//  Created by iferrei5 on 1/24/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BankAccountModel.h"
#import "TransactionsViewController.h"

@interface MyBankViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *depositLabel;
@property (strong, nonatomic) IBOutlet UIButton *withdrawLabel;
@property (strong, nonatomic) IBOutlet UILabel *balanceLabel;
@property (strong, nonatomic) IBOutlet UITextField *money;
@property (strong, nonatomic) BankAccountModel *account;

-(IBAction)depositPressed:(id)sender;
-(IBAction)withdrawPressed:(id)sender;

@end
