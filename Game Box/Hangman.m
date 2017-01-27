//
//  Hangman.m
//  Hangman
//
//  Created by Andy Wu on 11/22/16.
//  Copyright © 2016 Andy Wu. All rights reserved.
//

#import "Hangman.h"
#include <stdlib.h>

@implementation Hangman


//Reads in a list of words from file and returns a random word
- (NSString *) getDict {
    
    //Need to change the filepath based off the location of the wordlist
    //When you download the project.
    NSString* filePath = @"/Users/andywu/Desktop/TurnToTech/ObjectiveC/Game Box/Game Box/WordList";
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString* input;
    if ([fileManager fileExistsAtPath:filePath isDirectory:NO]) {
        input = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    }
    
    NSArray *wordList = [input componentsSeparatedByString:@"\n"];
    
    int r = arc4random_uniform((int)[wordList count] - 1);
    
    return wordList[r];
}

- (char) letterGuess {
    char guess[4] = {0};
    printf("\nEnter a letter: ");
    scanf("%s", guess);
    return guess[0];
}

- (void) checkWord:(NSString*) guess and: (NSString*) word {
    BOOL contains;
    NSMutableArray *wordArray = [NSMutableArray array];
    for (int i = 0; i < [word length]; i++) {
        [wordArray addObject:[NSString stringWithFormat:@"%C", [word characterAtIndex:i]]];
    }
    
    for(int i = 0; i < [word length]; i++){
        contains = [self.correctGuess containsObject:guess];
        if([wordArray[i] isEqual:guess]){
            if(!contains){
                [self.correctGuess addObject: guess];
            }
            
            self.numLettersMatched++;
        }

    }
    
    [self showMatchedLetters:word];
    
    printf("\n\n");
}

- (void) wrongGuess{
    for(int i = 1; i <= self.numWrongGuess; i++){
        switch (i) {
            case 1:
                printf("    O\n");
                break;
            case 2:
                printf("   /");
                break;
            case 3:
                printf("|");
                break;
            case 4:
                printf("\\ \n");
                break;
            case 5:
                printf("   /");
                break;
            case 6:
                printf(" \\\n");
                break;
            default:
                break;
        }
    }
    
}

- (void) showMatchedLetters:(NSString *) word {
    
    NSMutableArray *wordArray = [NSMutableArray array];
    for (int i = 0; i < [word length]; i++) {
        [wordArray addObject:[NSString stringWithFormat:@"%C", [word characterAtIndex:i]]];
    }
    printf("\n");
    for(int i = 0; i < [word length]; i++){
        for(int j = 0; j < [self.correctGuess count]; j++){
            if([wordArray[i] isEqualToString:self.correctGuess[j]]){
                printf("%s ", [self.correctGuess[j] UTF8String]);
            }
            
        }
        /*
        if(i < [word length]){
            printf("- ");
        }
        */
    }
    
    
}


- (void) checkGuess: (char) guess and: (NSString*) actualWord {
    NSString *letter = [NSString stringWithFormat:@"%c", guess];
    
    if ([actualWord containsString:letter]) {
        printf("The word contains %s\n\n\n", [letter UTF8String]);
        [self checkWord:letter and:actualWord];
    } else {
        printf("The word does not contain %s\n\n\n", [letter UTF8String]);
        self.numWrongGuess++;
        //printf("Number of wrong guesses %d\n", self.numWrongGuess);
        [self wrongGuess];
        [self showMatchedLetters:actualWord];
    }
}

- (instancetype)init
{
    if (self) {
        self.correctGuess = [[NSMutableArray alloc] init];
        self.numLettersMatched = 0;
    }
    return self;
}

- (void) startGame{
    
    // Get random word from a pre-populated list
    NSString *word = [self.getDict lowercaseString];
    //NSLog(@"Word is: %@\n", word);
    
    //Find the length of word chosen
    int numLetters = (int) [word length];
    printf("Number of letters %d\n\n\n", numLetters);
    
    //Print the number of letter blanks
    for(int i = 0; i < numLetters; i++){
        printf("- ");
    }
    printf("\n");
    
    while(self.numLettersMatched != numLetters){
        //Get players guess and check if letter is in it
        char letter = [self letterGuess];
        [self checkGuess:letter and:word];

        if(self.numWrongGuess == 6){
            printf("Sorry, you killed the man.\n Your word was %s.\n", [word UTF8String]);
            break;
        }
    }
    if (self.numLettersMatched == numLetters){
        printf("Congratulations!\n You have solved the puzzle.\n");
    }
    
}

@end
