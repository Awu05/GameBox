//
//  Hangman.h
//  Hangman
//
//  Created by Andy Wu on 11/22/16.
//  Copyright © 2016 Andy Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hangman : NSObject

@property int numWrongGuess;
@property NSMutableArray *correctGuess;
@property int numLettersMatched;


- (NSString *) getDict;
- (char) letterGuess;
- (void) checkWord:(NSString*) guess and: (NSString*) word;
- (void) wrongGuess;
- (void) showMatchedLetters:(NSString *) word;
- (void) checkGuess: (char) guess and: (NSString*) actualWord;
- (void) startGame;



@end
