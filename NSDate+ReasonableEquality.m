//
//  NSDate+ReasonableEquality.m
//  todoro
//
//  Created by Fernando Rodríguez Romero on 4/28/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSDate+ReasonableEquality.h"


@implementation NSDate (NSDate_ReasonableEquality)

-(BOOL) isReasonablyEqualTo: (NSDate *) anotherDate{
    
    return (ABS([self timeIntervalSinceDate:anotherDate]) < 1);
}
@end
