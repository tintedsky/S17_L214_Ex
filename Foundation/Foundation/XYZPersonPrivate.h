//
//  XYZPersonPrivate.h
//  Foundation
//
//  Created by Hongbo Niu on 2017-10-20.
//  Copyright © 2017 Udemy. All rights reserved.
//

#ifndef XYZPersonPrivate_h
#define XYZPersonPrivate_h
#import "XYZPerson.h"

@interface XYZPerson ()
@property (nonatomic, readwrite) NSNumber* weight;
+(void)setWeight:(NSNumber *) weight;
@end

#endif /* XYZPersonPrivate_h */
