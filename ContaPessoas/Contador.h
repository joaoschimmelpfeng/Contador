//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//
@protocol cDelegate
@required
-(void) atualizar;
@end

@interface Contador : NSObject 
@property (nonatomic, retain) id <cDelegate> delegate;


- (void)maisUmCueca;
- (void)maisUmaGata;

-(int)getBoys;
-(int)getGirls;
-(int)getTotal;
+(Contador *) instance;
@end

