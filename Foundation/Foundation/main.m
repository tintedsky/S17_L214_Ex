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
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //__strong is the default value
        XYZPerson *xyzPerson =[[XYZPerson alloc] init];
        XYZShoutingPerson *xyzShoutingPerson = [[XYZShoutingPerson alloc] init:@"Muge" lastName:@"Niu"];
        
        [xyzPerson sayHello];
        [xyzShoutingPerson sayHello];
        
        NSLog(@"xyzPerson %@", [xyzPerson lastNameFirstNameString]);
        NSLog(@"xyzShoutingPerson %@", [xyzShoutingPerson lastNameFirstNameString]);
    }
    return 0;
}
