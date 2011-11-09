//
//  NSDate+FRRUtils.h
//  HumaneTimeInterval
//
//  Created by Fernando Rodríguez Romero on 6/27/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (NSDate_FRRUtils)

//Class methods
+(NSDate *) today;
+(NSDate *) dateWithISODate: (NSString *) iso8601Date;

// init
-(id) initWithISO8601Date: (NSString *) iso8601Date;

@end
