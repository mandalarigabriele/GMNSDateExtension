//
//  GMNSDateExtension
//
//  Created by Gabriele Mandalari on 01/10/14.
//  Copyright (c) 2014 Gabriele Mandalari. All rights reserved.
//

#import "GMNSDateExtension.h"

@implementation GMNSDateExtension


+(NSDate*) dateFromString: (NSString*) date withFormat: (NSString*) format
{

	NSDateFormatter *formatter = [NSDateFormatter new];
	
	[formatter setDateFormat:format];
	
	return [formatter dateFromString: date];
	
}

+(NSString*) stringFromDate: (NSDate*) date withFormat: (NSString*) format
{
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	
	[formatter setDateFormat:format];
	
	return [formatter stringFromDate: date];
	
}

+(NSDateComponents*) dateComponentsFromString: (NSString*) date withFormat: (NSString*) format
{
	
	NSCalendar* calender = [NSCalendar currentCalendar];
	
	NSDateComponents* statusDateComponent = [calender components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate: [self dateFromString:date withFormat: format] ];
	
	return statusDateComponent;
	
}

+(NSDateComponents*) dateComponentsFromDate: (NSDate*) date withFormat: (NSString*) format
{
	
	NSCalendar* calender = [NSCalendar currentCalendar];
	
	NSDateComponents* statusDateComponent = [calender components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate: date] ;
	
	return statusDateComponent;
	
}

+(NSInteger) yearComponentFromDate:(NSDate*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromDate:date withFormat:format] year];
	
}

+(NSInteger) monthComponenetFromDate:(NSDate*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromDate:date withFormat:format] month];
	
}

+(NSInteger) dayComponenetFromDate:(NSDate*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromDate:date withFormat:format] day];
	
}

+(NSInteger) hourComponenetFromDate:(NSDate*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromDate:date withFormat:format] hour];
	
}

+(NSInteger) minuteComponenetFromDate:(NSDate*) date withFormat: (NSString*) format
{

	return [[self dateComponentsFromDate:date withFormat:format] minute];
	
}

+(NSInteger) secondComponenetFromDate:(NSDate*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromDate:date withFormat:format] second];
	
}

+(NSInteger) yearComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return  [[self dateComponentsFromString:date withFormat:format] year];
	
}

+(NSInteger) monthComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromString:date withFormat:format] month];
	
}

+(NSInteger) dayComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromString:date withFormat:format] day];
	
}

+(NSInteger) hourComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromString:date withFormat:format] hour];
	
}

+(NSInteger) minuteComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromString:date withFormat:format] minute];
	
}

+(NSInteger) secondComponenetFromString:(NSString*) date withFormat: (NSString*) format
{
	
	return [[self dateComponentsFromString:date withFormat:format] second];
	
}

+(NSInteger) yearsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSYearCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSYearCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSYearCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference year];
	
}

+(NSInteger) monthsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSMonthCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSMonthCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSMonthCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference month];
	
}

+(NSInteger) daysDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSDayCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference day];
	
}

+(NSInteger) hoursDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSHourCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSHourCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSHourCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference hour];
	
}

+(NSInteger) minuteDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSMinuteCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSMinuteCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSMinuteCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference minute];
	
}

+(NSInteger) secondsDifferenceFromDate:(NSDate*) fromDate toDate: (NSDate*) toDate withFormat: (NSString*) format
{
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSSecondCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSSecondCalendarUnit startDate:&toDate
				 interval:NULL forDate:toDate];
	
	NSDateComponents *difference = [calendar components:NSSecondCalendarUnit
											   fromDate:fromDate toDate:toDate options:0];
	
	return [difference second];
}

+(BOOL) isToday: (NSDate*) date withFormat:(NSString*) format
{
	
	NSDate* today = [NSDate date];
	
	if( [self yearsDifferenceFromDate:today toDate:date withFormat:format] == 0 && [self monthsDifferenceFromDate:today toDate:date withFormat:format] == 0 && [self daysDifferenceFromDate:today toDate:date withFormat:format]==0)
		
		return YES;

	return NO;
}

+(BOOL) isYesterday: (NSDate*) date withFormat:(NSString*) format
{
	
	NSDate *fromDate = [NSDate date];
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&date
				 interval:NULL forDate:date];
	
	NSDateComponents *difference = [calendar components:NSDayCalendarUnit
											   fromDate:fromDate toDate:date options:0];
	
	if ([difference day] == -1)
		return YES;

	return NO;
	
}

+(BOOL) isTomorrow: (NSDate*) date withFormat:(NSString*) format
{
	
	NSDate *fromDate = [NSDate date];
	
	NSCalendar *calendar = [NSCalendar currentCalendar];
	
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&fromDate
				 interval:NULL forDate:fromDate];
	[calendar rangeOfUnit:NSDayCalendarUnit startDate:&date
				 interval:NULL forDate:date];
	
	NSDateComponents *difference = [calendar components:NSDayCalendarUnit
											   fromDate:fromDate toDate:date options:0];
	
	if ([difference day] == 1)
		return YES;
	
	return NO;
}

+(NSDate *) dateTomorrowWithFormat:(NSString*) format
{
	
	NSDate *now = [NSDate date];

	int daysToAdd = 1;
	
	return  [now dateByAddingTimeInterval:60*60*24*daysToAdd];
	
}

+ (NSDate *) dateYesterdayWithFormat:(NSString*) format
{
	
	NSDate *today = [NSDate date];
	
	return [today dateByAddingTimeInterval: -86400.0];

}

+(NSString*) dateFormat:(DateFromat) dateformat
{
	
	switch (dateformat)
	{

		case DateFormatAmerican: return @"yyyy-MM-dd HH:mm:ss";
			
		case DateFormatEuropean: return @"dd-MM-yyyy HH:mm:ss";
			
		default: break;
	}
	
}

@end
