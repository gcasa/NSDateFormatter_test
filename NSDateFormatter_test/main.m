//
//  main.m
//  NSDateFormatter_test
//
//  Created by Gregory John Casamento on 8/8/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSDateFormatter *df;
        NSTimeInterval t = 650498989.396999955177;
        NSDate *d;
        NSString *s;

        df = [NSDateFormatter new];
        [df setLocale:[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"]];
        [df setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
        [df setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];

        d = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:t];
        s = [df stringFromDate:d];
        if ([@"2021-08-12T22:09:49.397Z" isEqualToString:s] == NO)
        {
            NSLog(@"botch: should get 2021-08-12T22:09:49.397Z but got %@", s);
        }
        else
        {
            NSLog(@"matched");
        }
    }
    return 0;
}
