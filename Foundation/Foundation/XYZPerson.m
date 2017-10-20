//
//  XYZPerson.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "XYZPerson.h"
#import "XYZPersonPrivate.h"

@interface XYZPerson ()
@property (readwrite) NSNumber* height;
@end


@implementation XYZPerson

-(id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth height:(NSNumber*)height weight:(NSNumber *)weight{
    self.firstName = firstName;
    self.lastName = lastName;
    self.dateOfBirth = dateOfBirth;
    [self setHeight:height];    //auto synthesized access method
    [self setWeight:weight];    //Customized
    
    return self;
}

// init has to be object function instead of class function;
-(id)init{
    self = [super init];  //In a factory method, we can call [[self alloc]init]
    if(self){
       return [self initWithFirstName:@"John" lastName:@"Doe" dateOfBirth:nil height:nil weight:nil];
    }
    return self;
}

-(id)init:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth height:(NSNumber*)height weight:(NSNumber*)weight{
    self = [super init];  //In a factory method, we can call [[self alloc]init]
    if(self){
        return [self initWithFirstName:firstName lastName:lastName dateOfBirth:dateOfBirth height:height weight:weight];
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

+(void)setWeight:(NSNumber *) weight{
    if ([weight isGreaterThan:[NSNumber numberWithInt:0]] && [weight isLessThan:[NSNumber numberWithInt:300]]){
        self.weight = weight;
    }
}

-(NSNumber *)measureHeight{
    return self.height;
}

@end
