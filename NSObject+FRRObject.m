//
//  NSObject+FRRObject.m
//  testDelay
//
//  Created by Fernando Rodríguez Romero on 6/22/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSObject+FRRObject.h"


@implementation NSObject (NSObject_FRRObject)

-(void)performBlock:(void (^)(void))block afterDelay: (NSTimeInterval) delayInSeconds{
    
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), block);
}

@end
