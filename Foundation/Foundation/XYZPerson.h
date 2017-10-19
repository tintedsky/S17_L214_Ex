//
//  XYZPerson.h
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSDate *dateOfBirth;
-(void)sayHello;
-(void)sayGoodBye;
-(void)sayHow;
-(void)saySomething:(NSString*)greeting;
-(id) initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName dateOfBirth:(NSDate*)dateOfBirth;
+(id)init;
+(id)person;
@end
