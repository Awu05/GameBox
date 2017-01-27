#import <Foundation/Foundation.h>
#import "TictacToe.h"
#import "NumberWizInfo.h"
#import "Hangman.h"
#include <stdlib.h>

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char userGameSelection[1];
        NSLog(@"▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄       ▄▄  ▄▄▄▄▄▄▄▄▄▄▄       ▄▄▄▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄▄▄▄▄  ▄       ▄");
NSLog(@"▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌     ▐░░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░▌     ▐░▌");
NSLog(@"▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌   ▐░▐░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌");
NSLog(@"▐░▌          ▐░▌       ▐░▌▐░▌▐░▌ ▐░▌▐░▌▐░▌               ▐░▌       ▐░▌▐░▌       ▐░▌  ▐░▌ ▐░▌");
NSLog(@"▐░▌ ▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▐░▐░▌ ▐░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌   ▐░▐░▌");
NSLog(@"▐░▌▐░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░▌ ▐░▌       ▐░▌    ▐░▌");
NSLog(@"▐░▌ ▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌   ▀   ▐░▌▐░█▀▀▀▀▀▀▀▀▀      ▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌   ▐░▌░▌");
NSLog(@"▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌               ▐░▌       ▐░▌▐░▌       ▐░▌  ▐░▌ ▐░▌");
NSLog(@"▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌");
NSLog(@"▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌     ▐░░░░░░░░░░▌ ▐░░░░░░░░░░░▌▐░▌     ▐░▌");
NSLog(@"▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀       ▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀\n\n");
        
        
        //printf("\n\t\t\tWelcome To GAME BOX!\n");
        //printf("----------------------------------------------------------------------\n\n");
        
        while (true) {
            printf("Please select which game you would like to play:\n");
            printf("1: Tic Tac Toe\n");
            printf("2: Hangman\n");
            printf("3: Number Wizard\n\n");
            printf("0: Exit\n\n");
            printf("ENTER:");
            scanf("%s", userGameSelection);
            printf("\n");
            
            if (userGameSelection[0] == '1') {
                TictacToe *tictacToe = [TictacToe new];
                [tictacToe startGame];
            } else if (userGameSelection[0] == '2') {
                Hangman *hang = [Hangman new];
                [hang startGame];
                
            } else if (userGameSelection[0] == '3') {
                NumberWizInfo *numberWizInfo = [NumberWizInfo new];
                [numberWizInfo startGame];
                
            } else if (userGameSelection[0] == '0') {
                printf("Thank you for playing.\n\n\n\n");
                break;
            } else {
                printf("Inproper selection. Please selection a number corresponding to each game. Enter 0 to quit\n\n");
            }
        }
    }
    return 0;
}
