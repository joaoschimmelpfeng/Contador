//
//  SecondViewController.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contador.h"

@interface SecondViewController : UIViewController <cDelegate>

@property (weak, nonatomic) IBOutlet UILabel *totalBoys;
@property (weak, nonatomic) IBOutlet UILabel *totalGirls;
@property (weak, nonatomic) IBOutlet UILabel *total;
-(void) update;
- (IBAction)click:(id)sender;
-(void) atualizar;
@end

