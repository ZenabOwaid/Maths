//
//  AdditionQuestion.m
//  Maths
//
//  Created by Zenab Owaid on 6/27/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _number1 = arc4random_uniform(100) + 10;
        _number2 = arc4random_uniform(100) + 10;

        _answer = _number1 + _number2;
        
    }
    return self;
}

@end
