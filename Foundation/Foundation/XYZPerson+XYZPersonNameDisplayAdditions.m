//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-19.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)

-(NSString *)lastNameFirstNameString{
    return [NSString stringWithFormat:@" %@, %@", self.lastName, self.firstName];
}

@end
