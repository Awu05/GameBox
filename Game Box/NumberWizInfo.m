//
//  NumberWizInfo.m
//  NumberWizard
//
//  Created by Avery Barrantes on 11/22/16.
//  Copyright © 2016 Avery Barrantes. All rights reserved.
//

#import "NumberWizInfo.h"

@implementation NumberWizInfo

-(void)startGame{
    _min = 1;
    _max = 1000;
    _guess = 500;

                                                                     
    printf("===================================================\n");
    printf("\t\t\tWelcome to Number Wizard\n\n");
    printf("Pick a number between 1 and 1000 but dont tell me!\n");
    printf("the higest number you can pick is %d\n", _max);
    printf("the lowest number you can pick is %d\n", _min);
    printf("is the number higher or lower then %d?\n\n", _guess);
    printf("Type Higher for Higher, type Lower for Lower, type correct if your number was found \n");
    [self updateGame];
}


-(void)updateGame{
    char userinput[50];
    
    while(true) {
        scanf("%s", userinput);
        NSString *userLogic = [NSString stringWithCString:userinput encoding:NSUTF8StringEncoding];
        if([userLogic  isEqual: @"higher"]){
            printf("works\n\n");
            _min = _guess;
            [self nextGuess];
        } else if([userLogic  isEqual: @"lower"]) {
            _max = _guess;
            [self nextGuess];
        } else if ([userLogic  isEqual: @"correct"]) {
            [self nextGuess];
            printf("\nI won!!!!!!!! \n\n");
            break;
        }
    }
}

-(void)nextGuess{
    
    _guess = (_max + _min) / 2;
    printf("higher or lower then %d", _guess);
    printf("________________________________\n");
}

@end
