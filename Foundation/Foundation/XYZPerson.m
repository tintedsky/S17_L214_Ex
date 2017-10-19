//
//  XYZPerson.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

-(id) initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth{
    self.firstName = firstName;
    self.lastName = lastName;
    self.dateOfBirth = dateOfBirth;
    return self;
}

+(id)init{
    id person = [[self alloc]init];  //In a factory method, we can call [[self alloc]init]
    if(person){
       return [person initWithFirstName:@"John" lastName:@"Doe" dateOfBirth:nil];
    }
    return person;
}

-(void)sayHello{
    NSString *greeting = [NSString stringWithFormat:@"Hello %@ %@!", self.firstName, _lastName];
    [self saySomething:greeting];
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
