//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs;

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers;

- (NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers;

- (NSString *)firstPremiumCheeseInStock: (NSArray *)premiumCheeseNames
                     premiumCheeseNames: (NSArray *)cheesesInStock;

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags;


@end
