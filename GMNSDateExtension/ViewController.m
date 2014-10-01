//
//  ViewController.m
//  GMNSDateExtension
//
//  Created by Gabriele Mandalari on 01/10/14.
//  Copyright (c) 2014 Gabriele Mandalari. All rights reserved.
//

#import "ViewController.h"
#import "GMNSDateExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
	BOOL isToday = [GMNSDateExtension isToday: [NSDate date] withFormat:[GMNSDateExtension dateFormat:DateFormatAmerican]];
	
	NSLog(isToday ? @"isToday = Yes" : @"isToday = No");
	
	NSDate *tomorrow = [GMNSDateExtension dateTomorrowWithFormat: [GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	NSDate *yesterday = [GMNSDateExtension dateYesterdayWithFormat: [GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	BOOL isTomorrow = [GMNSDateExtension isTomorrow: tomorrow withFormat:[GMNSDateExtension dateFormat:DateFormatEuropean]];
	
	NSLog(isTomorrow ? @"isTomorrow = Yes" : @"isTomorrow = No");
	
	BOOL isYesterday = [GMNSDateExtension isYesterday: yesterday withFormat:[GMNSDateExtension dateFormat:DateFormatEuropean]];
	
	NSLog(isYesterday ? @"isYesterday = Yes" : @"Yesterday = No");
	
	NSInteger daysDifference = [GMNSDateExtension daysDifferenceFromDate:yesterday toDate:tomorrow withFormat:[GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	NSLog(@"Days Difference %ld", (long)daysDifference);
	
	NSInteger yearsDifference = [GMNSDateExtension yearsDifferenceFromDate: [NSDate dateWithTimeIntervalSince1970:0] toDate:tomorrow withFormat:[GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	NSLog(@"Years Difference %ld", (long)yearsDifference);
	
	NSInteger monthsDifference = [GMNSDateExtension monthsDifferenceFromDate: [NSDate dateWithTimeIntervalSince1970:0] toDate:tomorrow withFormat:[GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	NSLog(@"Month Difference %ld", (long)monthsDifference);
	
	NSInteger secondsDifference = [GMNSDateExtension secondsDifferenceFromDate: [NSDate dateWithTimeIntervalSince1970:0] toDate:tomorrow withFormat:[GMNSDateExtension dateFormat: DateFormatEuropean]];
	
	NSLog(@"Seconds Difference %ld", (long)secondsDifference);
	
	NSInteger dayComponent = [GMNSDateExtension dayComponenetFromDate:[NSDate date] withFormat:@"dd-MM-yyyy"];
	
	NSLog(@"Day Component %ld", (long)dayComponent);

	
}

@end
