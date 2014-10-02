//
//  main.m
//  Stringz
//
//  Created by Anthony Dagati on 10/1/14.
//  Copyright (c) 2014 Black Rail Capital. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSMutableString *string = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [string appendString:@"Testing this loop\n"];
        }
        [string writeToFile:@"/tmp/loop.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"Done writing /tmp/loop.txt");
        }
    return 0;
}


