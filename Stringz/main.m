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
        
        // Writing files to text file
        
        NSMutableString *string = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++) {
            [string appendString:@"Testing this loop\n"];
        }
        [string writeToFile:@"/tmp/loop.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"Done writing /tmp/loop.txt");
    
        // Reading from a text file
    
        NSError *error;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/tmp/temporary.txt" encoding:NSUTF8StringEncoding error:&error];
        
        if (!str) {
            NSLog(@"Read filed: %@", [error localizedDescription]);
        } else {
            NSLog(@"temporary.txt looks lie this:\n %@", str);
        }
    }
    return 0;
}


