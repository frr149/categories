//
//  NSDate+FRRUtils.m
//  HumaneTimeInterval
//
//  Created by Fernando Rodríguez Romero on 6/27/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "NSDate+FRRUtils.h"


@implementation NSDate (NSDate_FRRUtils)

#pragma mark - Class methods
//Class methods
+(NSDate *) today{
    return [[[NSDate alloc] init] autorelease];
    
}
+(NSDate *) dateWithISODate: (NSString *) iso8601Date{
    return [[[self alloc] initWithISO8601Date:iso8601Date] autorelease];
}


#pragma mark - Initializers
-(id) initWithISO8601Date: (NSString *) iso8601Date{
    // Takes a date in the YYYYMMDD form
    if ([iso8601Date length] == 8) {
        int year = [[iso8601Date substringWithRange:NSMakeRange(0, 4)] integerValue];
        int month = [[iso8601Date substringWithRange:NSMakeRange(4, 2)] integerValue];
        int day = [[iso8601Date substringWithRange:NSMakeRange(6,2)] integerValue];
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:year];
        [comps setMonth:month];
        [comps setDay:day];
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        [cal setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
        self = [cal dateFromComponents:comps];
        
        
        [comps release];
    }else{
        self = nil;
        [NSException raise:@"Wrong ISO8601 format" format:@"Should be in YYYYMMDD format, instead got %@", iso8601Date];
    }
    
    
    
    return self;
    
}
@end
