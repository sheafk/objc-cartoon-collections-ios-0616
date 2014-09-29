//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    NSArray *dwarvesToBeRollCalled = @[@"Doc",@"Dopey",@"Bashful"];
    NSLog(@"%@",[self rollCallDwarves:dwarvesToBeRollCalled]);

    NSArray *callsToBeGivenWithHeart = @[@"earth",@"wind"];
    NSLog(@"%@",[self summonCaptainPlanet:callsToBeGivenWithHeart]);

    NSLog(@"%@",[self longPlaneteerCalls:callsToBeGivenWithHeart]);

    NSArray *possibleCheeses= @[@"prosciutto", @"cambert", @"baguette"];
    NSLog(@"%@",[self findTheCheese:possibleCheeses]);

    NSArray *scroogesMoney = @[@"$$",@"$",@"$$$"];
    NSLog(@"%@",[self calculateDollarAmountsWithReceipt:scroogesMoney]);

    
    return YES;
}

- (NSString *)rollCallDwarves:(NSArray *)dwarves
{
    NSMutableString *dwarfString = [[NSMutableString alloc] init];
    for (int count = 0; count < dwarves.count; count++) {
        [dwarfString appendFormat:@"%i. %@", count + 1, dwarves[count]];
        if (count < dwarves.count-1) {
            [dwarfString appendString:@" | "];
        }
    }
    
    return dwarfString;
}

- (NSArray *)summonCaptainPlanet:(NSArray *)planteerCalls
{
    NSMutableArray *modifiedCalls = [[NSMutableArray alloc] init];
    for (NSString *call in planteerCalls) {
        NSString *modifiedCall = [NSString stringWithFormat:@"%@!",[call uppercaseString]];
        [modifiedCalls addObject:modifiedCall];
    }
    return modifiedCalls;
}

- (NSArray *)longPlaneteerCalls:(NSArray *)planteerCalls
{
    NSMutableArray *longCalls = [[NSMutableArray alloc] init];
    for (NSString *currentCall in planteerCalls) {
        if (currentCall.length > 4) {
            [longCalls addObject:currentCall];
        }
    }
    
    return longCalls;
}

- (NSString *)findTheCheese:(NSArray *)cheeses
{
    for (NSString *cheese in cheeses) {
        if ([cheese isEqualToString:@"cheddar"] || [cheese isEqualToString:@"gouda"] || [cheese isEqualToString:@"cambert"]) {
            return cheese;
        }
    }
    return nil;
}

- (NSArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt
{
    NSMutableArray *convertedArray = [[NSMutableArray alloc] init];
    for (NSString *item in receipt) {
        NSString *convertedItem = [NSString stringWithFormat:@"$%lu", (unsigned long)item.length];
        [convertedArray addObject:convertedItem];
    }
    return convertedArray;
}

















- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
