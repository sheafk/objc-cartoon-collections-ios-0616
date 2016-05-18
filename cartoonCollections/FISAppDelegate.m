//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *rollCall = @"";
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger p = i + 1;
        NSString *names;
        
        if (i == [dwarfs count] - 1) {
            
            names = [NSString stringWithFormat:@"%lu. %@", (unsigned long)p, dwarfs[i]];
            
        }
        
        else {
            
            names = [NSString stringWithFormat:@"%lu. %@ | ", (unsigned long)p, dwarfs[i]];
        }
        
        rollCall = [rollCall stringByAppendingString:names];
    }
    
    /*
     if ([rollCall length] > 0) {
     rollCall = [rollCall substringToIndex:[rollCall length] - 3]; //I used this to trim the end of the string. It is outside of the for loop in order to only change the final formatted dwarf and not each of them.
     } else {
     
     }*/
    NSLog (@"Here is the dwarf rollCall: %@", rollCall);
    return rollCall;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *arrayOfPlaneteerShoutsFromArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *exclaimPowers = [NSString stringWithFormat:@"%@!", powers[i]];
        NSString *shoutPowers = [exclaimPowers uppercaseString];
        
        [arrayOfPlaneteerShoutsFromArray addObject:shoutPowers];
        
        NSLog (@"This should add an exclaimation point to each string item: %@", exclaimPowers);
        NSLog (@"This should be each string with an exclaimation point in all caps: %@", shoutPowers);
        NSLog (@"I want to check the Shouts inside of the array: %@", arrayOfPlaneteerShoutsFromArray);
        
    }
    NSLog (@"I want to check the Shouts outside of the array: %@", arrayOfPlaneteerShoutsFromArray);
    return arrayOfPlaneteerShoutsFromArray;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *phrase = [[NSMutableString alloc]initWithFormat:@"Let our powers combine:\n"];
    
    NSArray* shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [shouts count]; i++){
        [phrase appendFormat:@"%@\n", shouts[i]];
    }
    [phrase appendFormat:@"Go Planet!"];
    
    return phrase;
}

//* The phrase begins with "Let our powers combine:",
//* Then each Planeteer shouts their power in sequence,
//* Then the phrase ends with "Go Planet!".
//* Each piece of the phrase should be separated by a new line (`\n`), and don't forget to capitalize "Planet!" as proper noun.
/*
 
 This is my first attempt to solve this method.
- (NSString *)firstPremiumCheeseInStock:(NSArray *)premiumCheeseNames
                     premiumCheeseNames:(NSArray *)cheesesInStock {
    
    NSString *print;
    for (NSString *commonCheese in premiumCheeseNames) {
        
        if (![cheesesInStock containsObject:commonCheese]) {
            print = @"No premium cheeses in stock.";
        }
        
        else {
                NSArray *bothCheeses = @[];
                if ([cheesesInStock containsObject:commonCheese]) {
                    [bothCheeses arrayByAddingObject:commonCheese];
                    NSLog (@"Both Cheeses prints this: %@", bothCheeses);
            }
            print = [bothCheeses objectAtIndex:0];
  
        }
    }
    return print;
}
*/

-(NSString*)firstPremiumCheeseInStock:(NSArray*)chessesInStock
                   premiumCheeseNames:(NSArray*)premiumCheeseNames{
   
    NSMutableArray* commonCheeses= [[NSMutableArray alloc]init];
    NSMutableString* commonCheeseOne = [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i< [premiumCheeseNames count]; i++){
        for (NSUInteger m = 0; m< [chessesInStock count]; m++){
            if (chessesInStock[m] == premiumCheeseNames[i]){
                [commonCheeses addObject:chessesInStock[m]];
            }
        }
    }
    if ([commonCheeses count]== 0){
        return @"No premium cheeses in stock.";
    }
    commonCheeseOne = commonCheeses[0];
    return commonCheeseOne;
}

 
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSString *paperMoney = @"";
    NSMutableArray *paperMoneyArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
            NSUInteger c = [moneyBags count];
            paperMoney = [NSString stringWithFormat:@"$%lu", (unsigned long)c];
        
    }
    [paperMoneyArray addObject:paperMoney];
    NSLog(@"check paper money: %@", paperMoneyArray);
    return paperMoneyArray;
    }
    
@end
