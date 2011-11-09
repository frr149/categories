//
//  NSArray+FRRFunctional.m
//  FunctionalCollections
//
//  Created by Fernando Rodríguez Romero on 7/12/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSArray+FRRFunctional.h"


@implementation NSArray (NSArray_FRRFunctional)

#pragma mark - Utilities
static inline id nullifyIfNil(id elt){
    if (!elt) {
        elt = [NSNull null];
    }
    return elt;
}


#pragma mark - FRRFunctional

-(NSArray *) arrayByFilteringWithBlock: (filterBlock) block{
    NSMutableArray *filtered = [[[NSMutableArray alloc] init] autorelease];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (block(obj)) {
            [filtered addObject:obj]; 
        }
    }];
    return filtered;
}

-(NSArray *) arrayByCollectingWithBlock: (collectorBlock) block{
    
    NSMutableArray *collected = [[[NSMutableArray alloc] initWithCapacity:[self count]]autorelease];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [collected addObject:nullifyIfNil(block(obj))];
    }];
    return collected;
}

-(id) valueByReducingWithBlock: (reducerBlock) block startingWith: (id) start{
    
    
    __block id val = [start retain];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id aux = val;
        val = block(val, obj);
        [val retain];
        [aux release];
    }];
    return [val autorelease];
}

@end
