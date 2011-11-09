//
//  NSArray+FRRFunctional.h
//  FunctionalCollections
//
//  Created by Fernando Rodríguez Romero on 7/12/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSArray (NSArray_FRRFunctional)

#pragma mark - Blocks
typedef BOOL (^filterBlock)(id element);
typedef id (^collectorBlock) (id element);
typedef id (^reducerBlock) (id firstElement, id nextElement);

#pragma mark - Methods
-(NSArray *) arrayByFilteringWithBlock: (filterBlock) block;
-(NSArray *) arrayByCollectingWithBlock: (collectorBlock) block;
-(id) valueByReducingWithBlock: (reducerBlock) block startingWith: (id) start;

@end
