//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [NSMutableArray array];
    for (NSUInteger i = 0; i < (index + 1); i++) {
        if (i == 0) {
            [sequence addObject:@0];
        }
        else if (i == 1) {
            [sequence addObject:@1];
        } else {
            NSNumber *firstPreviousValue = sequence[i - 1];
            NSNumber *secondPreviousValue = sequence[i - 2];
            
            NSInteger firstPreviousIntegerValue = [firstPreviousValue integerValue];
            NSInteger secondPreviousIntegerValue = [secondPreviousValue integerValue];
            
            [sequence addObject:@(firstPreviousIntegerValue + secondPreviousIntegerValue)];
        }
    }
    
    NSLog(@"%@", sequence);
    return sequence;
}

@end
