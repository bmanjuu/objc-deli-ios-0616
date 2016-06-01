//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringWithDeliLine:(NSArray *)deliLine{
    NSInteger deliLineLength = [deliLine count];
    
    NSMutableString *lineInfo = [@"The line is:" mutableCopy];
    if(deliLineLength > 0){
        for(NSUInteger i = 0; i < deliLineLength; i++){
            [lineInfo appendFormat:@"\n%lu. %@", i+1, deliLine[i]];
        }
    }
    else {
        return @"The line is currently empty.";
    }
    return lineInfo;
}



-(void)addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    [deliLine addObject:name]; 
}



-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *firstCustomer = [deliLine firstObject];
    [deliLine removeObjectAtIndex:0];
    
    return firstCustomer;
}

@end
