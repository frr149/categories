//
//  NSArrayTests.m
//  FunctionalCollections
//
//  Created by Fernando Rodríguez Romero on 7/12/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSArrayTests.h"
#import "NSArray+FRRFunctional.h"

@implementation NSArrayTests


-(void) testFilter{
    NSArray *test = [NSArray arrayWithObjects:@"One", @"two", [NSNumber numberWithInt:3], 
                     [NSNumber numberWithBool:NO], [NSNull null], [[NSDate alloc] init], nil];
    
    NSArray *strings = [test arrayByFilteringWithBlock:^BOOL(id element) {
        return [element isKindOfClass:[NSString class]];
    }];
    
    STAssertTrue([strings count] == 2, @"The filtered objects should be 2");
}

-(void) testCollector{
    NSArray *lowercase = [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
    NSArray *uppercase = [lowercase arrayByCollectingWithBlock:^id(id element) {
        return [element uppercaseString];
    }];
    
    NSArray *test = [NSArray arrayWithObjects: @"ONE", @"TWO", @"THREE", @"FOUR", nil];
    STAssertTrue([uppercase isEqualToArray: test], @"Should be equal");
    
}

-(void) testSurviveNil{
    NSArray *lowercase = [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
    
    
    STAssertTrueNoThrow([lowercase arrayByCollectingWithBlock:^id(id element) {return nil;}], @"Should not raise exceptions");
}

-(void) testReduction{
    NSNumber *start = [NSNumber numberWithInt:1];
    NSArray *primes = [NSArray arrayWithObjects:[NSNumber numberWithInt:2],
                        [NSNumber numberWithInt:3],
                        [NSNumber numberWithInt:5],
                        [NSNumber numberWithInt:7], nil];
    
    NSNumber *val = [primes valueByReducingWithBlock:^id(id firstElement, id nextElement) {
        return [NSNumber numberWithInt:([firstElement intValue] + [nextElement intValue])];
    } startingWith:start];
    
    
    STAssertTrue( [val intValue] == 18, @"The sum should be 18");
}
@end
