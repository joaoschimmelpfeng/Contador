//
//  tabView.h
//  ContaPessoas
//
//  Created by João Vitor dos Santos Schimmelpfeng on 19/02/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface tabView : UITabBarController <UITabBarControllerDelegate>
@property FirstViewController *pag1;
@property SecondViewController *pag2;
@end
