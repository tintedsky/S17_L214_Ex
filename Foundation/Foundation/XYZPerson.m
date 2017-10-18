//
//  XYZPerson.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson


-(void)sayHello{
    [self saySomething:@"Hello World!"];
}

-(void)saySomething:(NSString*) greeting{
    NSLog(@"%@", greeting);
}

-(void)sayGoodBye{
    NSString *goodBye = @"Good Bye!!!";
    [self saySomething:goodBye];
}

-(void)sayHow{
    NSString *str = @"How are you doing?";
    NSString *how = [NSString stringWithString:str];
    [self saySomething:how];
}

+(id)person{
    return [[self alloc]init];
}

@end
