//
//  NumberWizInfo.h
//  NumberWizard
//
//  Created by Avery Barrantes on 11/22/16.
//  Copyright © 2016 Avery Barrantes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NumberWizInfo : NSObject
@property(nonatomic)int max;
@property(nonatomic)int min;
@property(nonatomic)int guess;
-(void)startGame;
-(void)updateGame;
-(void)nextGuess;



@end


