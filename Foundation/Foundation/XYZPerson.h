//
//  XYZPerson.h
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

//1. Even if a mutable string is set and subsequently changed, 'firstName' captures whatever value it has at the time it is set.
//2. The copy attribute (show below) means that the property will use a strong reference, because it must hold on to the new object it creates.
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
@property (readonly) NSNumber* height;
@property (readonly) NSNumber* weight;

-(id)init;
-(id)init:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth height:(NSNumber*)height weight:(NSNumber*)weight;
-(id)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth height:(NSNumber*)height weight:(NSNumber *)weight;

-(void)sayHello;
-(void)saySomething:(NSString*)greeting;

-(NSNumber *)measureHeight;
@end
