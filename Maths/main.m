//
//  main.m
//  Maths
//
//  Created by Zenab Owaid on 6/27/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChar[225];
        BOOL gameOn = YES;
        
        
        while (gameOn) {
            
            
            AdditionQuestion *Q1 = [[AdditionQuestion alloc]init];
            
            NSLog(@" The question is %ld + %ld", Q1.number1 , Q1.number2);
            
            fgets(inputChar, 225, stdin);
            
            
          
            NSString *input = [[NSString alloc] initWithUTF8String:inputChar];
            
            if ( [input isEqualToString:@"quit\n"]){
                gameOn = NO;
                break;
            }
            NSInteger intAns = [input integerValue];
            
            
            
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            
            //NSLog(@"The string after Trimming: %@",input);
            
            
            if ( intAns == Q1.answer){
                NSLog(@"Right!");
            }
            else NSLog(@"Wrong!");
            
            
                
            

            
            
            
            
            
        }
    }
    return 0;
}
