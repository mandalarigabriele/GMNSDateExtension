//
//  GMNSDateExtension
//
//  Created by Gabriele Mandalari on 01/10/14.
//  Copyright (c) 2014 Gabriele Mandalari. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DateFromat)
{
	DateFormatAmerican,
	DateFormatEuropean
};

@interface GMNSDateExtension : NSObject

+(NSDate*) dateFromString: (NSString*) date withFormat: (NSString*) format;

+(NSString*) stringFromDate: (NSDate*) date withFormat: (NSString*) format;

+(NSDateComponents*) dateComponentsFromString: (NSString*) date withFormat: (NSString*) format;

+(NSDateComponents*) dateComponentsFromDate: (NSDate*) date withFormat: (NSString*) format;

+(NSInteger) yearComponentFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) monthComponenetFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) dayComponenetFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) hourComponenetFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) minuteComponenetFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) secondComponenetFromDate:(NSDate*) date withFormat: (NSString*) format;

+(NSInteger) yearComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) monthComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) dayComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) hourComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) minuteComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) secondComponenetFromString:(NSString*) date withFormat: (NSString*) format;

+(NSInteger) yearsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSInteger) monthsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSInteger) daysDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSInteger) hoursDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSInteger) minuteDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSInteger) secondsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format;

+(NSString*) dateFormat:(DateFromat) dateformat;

+(BOOL) isToday: (NSDate*) date withFormat:(NSString*) format;

+(BOOL) isYesterday: (NSDate*) date withFormat:(NSString*) format;

+(BOOL) isTomorrow: (NSDate*) date withFormat:(NSString*) format;

+(NSDate *) dateTomorrowWithFormat:(NSString*) format;

+(NSDate *) dateYesterdayWithFormat:(NSString*) format;

@end
