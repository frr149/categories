//
//  NSDate+ReasonableEquality.h
//  todoro
//
//  Created by Fernando Rodríguez Romero on 4/28/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import <Foundation/Foundation.h>

// NSDate's isEqualToDate: compares up to the millisecond. I need a comparison that discards the milliseconds, so 
// that 2 dates with a difference of a less than a second will be considered equal.

@interface NSDate (NSDate_ReasonableEquality)
-(BOOL) isReasonablyEqualTo: (NSDate *) anotherDate;
@end
