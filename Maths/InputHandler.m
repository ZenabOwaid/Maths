//
//  InputHandler.m
//  Maths
//
//  Created by Zenab Owaid on 6/27/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "InputHandler.h"
#import "AdditionQuestion.h"

@implementation InputHandler


- (NSString*)HandleInput:(AdditionQuestion*)additionQuestion{
char inputChar[225];


NSLog(@" The question is %ld + %ld", additionQuestion.number1 , additionQuestion.number2);
    
fgets(inputChar, 225, stdin);



NSString *input = [[NSString alloc] initWithUTF8String:inputChar];
    
    
    return input;
    
}

@end
