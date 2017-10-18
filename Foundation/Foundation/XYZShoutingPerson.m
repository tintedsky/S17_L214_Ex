//
//  XYZShoutingPerson.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson
-(void)saySomething:(NSString *)greeting{
    NSString *uppercaseString = greeting.uppercaseString;
    [super saySomething:uppercaseString];
}
@end
