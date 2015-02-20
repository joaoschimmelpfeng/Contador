//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
#import "Contador.h"

@interface SecondViewController ()
{
      Contador *contador;
}

@end

@implementation SecondViewController
@synthesize totalBoys,total,totalGirls;

-(void)atualizar
{
    [self click:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instance];
    [contador setDelegate:self];
    [self atualizar];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) update
{
    totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}

- (IBAction)click:(id)sender
{
    totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}


@end
