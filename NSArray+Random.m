//
//  NSArray+Random.m
//  SpeakLine
//
//  Created by Fernando Rodríguez Romero on 10/25/10.
//  Copyright 2010 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSArray+Random.h"


@implementation NSArray (Random)

- (id) objectAtRandom {
	int i, size;
	static unsigned int seed;
	
	// Las cabeceras que necesitan time(), srand() o random()
    // son incluídas por Foundation.h
	if (!seed) {
		seed = time(NULL);
		srand(seed);
	}
	
	size = [self count];
	
	if (size) {
		i = random() % size ;
		return [self objectAtIndex: i];
	}else {
		return nil;
	}

	
}

@end
