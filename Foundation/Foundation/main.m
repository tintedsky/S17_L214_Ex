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
        
        XYZShoutingPerson *person = [XYZShoutingPerson init];
        [person sayHello];
        [person sayGoodBye];
        [person sayHow];
        
        XYZPerson *xyzPerson;
        if(!xyzPerson){
            NSLog(@"xyzPerson is nil");
        }
    }
    return 0;
}
