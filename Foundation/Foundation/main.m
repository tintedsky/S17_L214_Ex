//
//  main.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-17.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //__strong is the default value
        XYZPerson *xyzPerson =[[XYZPerson alloc] init];
        XYZPerson __strong *partner = [[XYZPerson alloc] init:@"luke" lastName:@"Sky"];
        [xyzPerson setPartner: partner];
        NSLog(@"Now the object %@ has partner %@", xyzPerson, partner);

//      Test 1 switch
        NSLog(@"Before reset partner's original pointer");
        partner = nil;
        NSLog(@"After reset partner's original pointer");

//      Test 2 block
//        NSLog(@"Before the original reference to %@ has been reset to nil", xyzPerson);
//        xyzPerson = nil; // Now the person "luke Skey" is still alive coz of *partner;
//        NSLog(@"Now the original references has been reset to nil, but %@ still alive", partner);
    }
    return 0;
}
