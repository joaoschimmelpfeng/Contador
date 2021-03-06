//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"

@implementation Contador {
    int boy;
    int girl;
}
@synthesize delegate;

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

+ (Contador *)instance
{
    static Contador *sharedContador = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
    {
        sharedContador = [[self alloc] init];
    });
    return sharedContador;
}

- (void)maisUmCueca {
    boy = boy + 1;
    [delegate atualizar];
}
- (void)maisUmaGata {
    girl++;
    [delegate atualizar];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal
{
    return (boy+girl);
}



@end

