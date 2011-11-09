//
//  NSObject+Sorting.m
//  todoro
//
//  Created by Fernando Rodríguez Romero on 5/11/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSObject+Sorting.h"


@implementation NSObject (NSObject_Sorting)

// Returns the opposite result of compare:
-(NSComparisonResult) reverseCompare: (id) otherOne{
    NSComparisonResult res = [self compare: otherOne]; // el problema es que NSObject no responde a compare: ¿compare: no debería de estar en un protocol?
    
    if (res == NSOrderedAscending) {
        return NSOrderedDescending;
    }else if(res == NSOrderedDescending){
        return NSOrderedAscending;
    }else{
        return res;
    }
    
}

@end

