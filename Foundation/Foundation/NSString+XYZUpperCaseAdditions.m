//
//  NSString+XYZUpperCaseAdditions.m
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-20.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+XYZUpperCaseAdditions.h"
@implementation NSString (XYZUpperCaseAdditions)
-(NSString *) xyz_getUpperCaseString{
    return [NSString stringWithString:self.uppercaseString];
}
@end
