//
//  ScoreKeeper.m
//  Maths
//
//  Created by Zenab Owaid on 6/27/17.
//  Copyright © 2017 Zenab Owaid. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)Score{
    
    float score =0;
    score = (self.nofwrong / (self.nofwrong + self.nofright)) * 100 ;
    NSLog(@"%.2f",score);
    
    NSLog(@"score: %.0f right, %.0f wrong ---- %.2f %% ",self.nofright, self.nofwrong, score);
    
}

@end

