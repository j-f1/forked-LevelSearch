//
//  LSAppDelegate.m
//  LevelSearchBenchmarking
//
//  Created by John Tumminaro on 4/18/14.
//  Copyright (c) 2014 Tiny Little Gears. All rights reserved.
//

#import "LSAppDelegate.h"

@implementation LSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
   // [[LSTestManager sharedManager] setupWithTestMode:LSTestModeFTS4];
   // [LSTestManager performFTS4PerformanceTests];
    
    [[LSTestManager sharedManager] setupWithTestMode:LSTestModeLevelSearch];
    [[LSTestManager sharedManager] runPerformanceTestsWithNumberOfObjects:50000 numberOfQueries:50];
}

@end
