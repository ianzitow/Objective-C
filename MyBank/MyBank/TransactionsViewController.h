//
//  TransactionsViewController.h
//  MyBank
//
//  Created by iferrei5 on 1/26/14.
//  Copyright (c) 2014 iferrei5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyBankViewController.h"

@interface TransactionsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *transactionsViewList;
@property (nonatomic) NSArray *transactions;


@end
