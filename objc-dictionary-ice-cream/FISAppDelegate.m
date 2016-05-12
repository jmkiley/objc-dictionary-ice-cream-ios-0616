//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */
- (NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamByName = @{
        @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" : @"Natural Vanilla",
        @"Sophie" : @"Mexican Chocolate",
        @"Deniz" : @"Natural Vanilla",
        @"Tom" : @"Mexican Chocolate",
        @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream"
        };
    NSMutableArray *namesForIceCream = [ NSMutableArray new ];
    for (NSString *key in iceCreamByName ) {
        if ( [ iceCreamByName[key] isEqualToString:iceCream ]) {
            [ namesForIceCream addObject:key];
        };
        NSLog(@"%@", namesForIceCream);
    }
    return namesForIceCream;
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSString *iceCream ;
    NSMutableDictionary *countsOfIceCream = [NSMutableDictionary dictionary ] ;
    NSArray *namesOfPeople = [ NSArray new ] ;
    NSNumber *countPeople = nil;
    
    
    for (NSString *key in iceCreamByName ) {
        iceCream = iceCreamByName[key] ;
        if ( [countsOfIceCream objectForKey:iceCream ] == 0 ) {
            namesOfPeople = [self namesForIceCream:iceCream ] ;
            countPeople = @([ namesOfPeople count ]);
            countsOfIceCream[iceCream]=countPeople;
        }
    }
//    NSArray *peanutButter = [ self namesForIceCream:@"Peanut Butter and Chocolate" ] ;
//    NSArray *vanilla = [ self namesForIceCream:@"Natural Vanilla" ] ;
//    NSArray *chocolate = [ self namesForIceCream:@"Mexican Chocolate" ] ;
//    NSArray *cookies = [ self namesForIceCream:@"Cookies 'n Cream" ] ;
//    
//    NSNumber *countPeanutButter = @([ peanutButter count ]);
//    NSNumber *countVanilla = @([ vanilla count ]);
//    NSNumber *countChocolate = @([ chocolate count ]) ;
//    NSNumber *countCookies = @([ cookies count ]) ;
//    
//    NSMutableDictionary *countsOfIceCream = @{
//            @"Peanut Butter and Chocolate" : countPeanutButter,
//            @"Natural Vanilla" : countVanilla ,
//            @"Mexican Chocolate" : countChocolate ,
//            @"Cookies 'n Cream" : countCookies ,
//            };
    NSLog(@"%@", countsOfIceCream);
    return countsOfIceCream;
}

@end
