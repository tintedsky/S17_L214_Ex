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

// init has to be object function instead of class function;
-(id)init{
    self = [super init];  //In a factory method, we can call [[self alloc]init]
    if(self){
       return [self initWithFirstName:@"John" lastName:@"Doe" dateOfBirth:nil];
    }
    return self;
}

-(id)init:(NSString*)firstName lastName:(NSString*)lastName{
    self = [super init];  //In a factory method, we can call [[self alloc]init]
    if(self){
        return [self initWithFirstName:firstName lastName:lastName dateOfBirth:nil];
    }
    return self;
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

-(void) dealloc{
    NSLog(@"%@ is being deallcated", self);  // test if self can print out the object name;
}

@end
