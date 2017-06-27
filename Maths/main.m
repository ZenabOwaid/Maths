//
//  main.m
//  Maths
//
//  Created by Zenab Owaid on 6/27/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //char inputChar[225];
        BOOL gameOn = YES;
        NSString *input;
        NSInteger R = 0;
        NSInteger W = 0;
        
        
        
        while (gameOn) {
            
            
            AdditionQuestion *Q1 = [[AdditionQuestion alloc]init];
            

            
            
            InputHandler *IH1 = [ [InputHandler alloc ]init];
            
            input = [IH1 HandleInput:Q1];
            
            
            if ( [input isEqualToString:@"quit\n"]){
                gameOn = NO;
                break;
            }
            NSInteger intAns = [input integerValue];
            
            
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            

            if ( intAns == Q1.answer){
                NSLog(@"Right!");
                R++;
            }
            else {
                
            NSLog(@"Wrong!");
                W++;
            }
            
            
            
            
            
            
        }
        
        
        
        ScoreKeeper *score1 = [[ScoreKeeper alloc]init];
        
        score1.nofright = R;
        score1.nofwrong = W;
        
        [score1 Score];
        
    }
    return 0;
}



