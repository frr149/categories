//
//  NSObject+FRRObject.h
//  testDelay
//
//  Created by Fernando Rodríguez Romero on 6/22/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSObject (NSObject_FRRObject)

-(void)performBlock:(void (^)(void))block afterDelay: (NSTimeInterval) delayInSeconds; 

@end
