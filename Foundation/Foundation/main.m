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
#import "NSString+XYZUpperCaseAdditions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //__strong is the default value
        NSNumber *weight = [NSNumber numberWithInt:40];
        NSNumber *height = [NSNumber numberWithInt:120];
        XYZShoutingPerson *xyzShoutingPerson = [[XYZShoutingPerson alloc] init:@"Muge" lastName:@"Niu"  dateOfBirth:nil  height:height weight:weight];
        [xyzShoutingPerson assignHeight:[NSNumber numberWithInt:125]];
        NSLog(@"%@'s Height is %@", [xyzShoutingPerson firstName], [[xyzShoutingPerson measureHeight] stringValue]);
    }
    return 0;
}
