//
//  tabView.m
//  ContaPessoas
//
//  Created by João Vitor dos Santos Schimmelpfeng on 19/02/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "tabView.h"
#import "AppDelegate.h"

@implementation tabView
@synthesize pag1,pag2;

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Aqui");
    [self setDelegate:self];
    
    for (int i = 0; i < [[self viewControllers] count]; i++)
    {
     if([[[self viewControllers] objectAtIndex:i] isKindOfClass:[SecondViewController class]])
     {
         pag2 = [[self viewControllers] objectAtIndex:i];
     }
    }
}

- (void)tabBarController:(UITabBarController*)tabBarController didEndCustomizingViewControllers: (NSArray*)viewControllers changed:(BOOL)changed
{
    
}

- (void)tabBarController:(UITabBarController*)tabBarController didSelectViewController:(UIViewController*)viewController
{
    if(viewController == pag2)
    {
        [pag2 update];
    }
}

@end
