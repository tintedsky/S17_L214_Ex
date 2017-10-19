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
        XYZPerson *xyzPerson1 =[[XYZPerson alloc] init];
        XYZPerson * __weak xyzWeakPerson = xyzPerson1;
        NSLog(@"Now the object %@ has one more weak link", xyzWeakPerson);
        
        XYZPerson *xyzPerson2 =[[XYZPerson alloc] init:@"Jacek" lastName:@"Novasky"];
        XYZPerson *xyzStrongPerson = xyzPerson2;
        NSLog(@"Now the object %@ has one more Strong link", xyzStrongPerson);

        xyzPerson1 = nil;
        xyzPerson2 = nil;
        NSLog(@"Now the original references to both objects are reset to nil");
        
    }
    return 0;
}
