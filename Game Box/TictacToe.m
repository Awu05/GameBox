#import <Foundation/Foundation.h>
#import "TictacToe.h"

@interface TictacToe ()

@end

@implementation TictacToe : NSObject

- (void)startGame
{
    NSInteger chosen = 0;
    NSInteger player = 1;
    NSInteger winner = 0;
    NSInteger row = 0;
    NSInteger column = 0;
    
    NSInteger arr[4][4] = {{0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0},
        {0, 0, 0, 0}};
    
    printf("\n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld\n\n", arr[1][1], arr[1][2],arr[1][3],arr[2][1], arr[2][2],arr[2][3],arr[3][1], arr[3][2],arr[3][3]);
    
    do {
        if (player == 1) {
            //player 1's input
            printf("Player 1, please choose a cell. Enter row number (1, 2, or 3)");
            scanf("%ld", &row);
            printf("Enter column number (1, 2, or 3)");
            scanf("%ld", &column);
            
            //add input to board
            arr [row][column] = 1;
            
            printf("\n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld\n\n", arr[1][1], arr[1][2],arr[1][3],arr[2][1], arr[2][2],arr[2][3],arr[3][1], arr[3][2],arr[3][3]);
            
            chosen++;
            
            //check for winner
            if (arr[1][1] == 1 && arr[2][1] == 1 && arr[3][1] == 1) {
                winner = 1;
            } else if (arr[1][2] == 1 && arr[2][2] == 1 && arr[3][2] == 1) {
                winner = 1;
            } else if (arr[1][3] == 1 && arr[2][3] == 1 && arr[3][3] == 1) {
                winner = 1;
            } else if (arr[1][1] == 1 && arr[1][2] == 1 && arr[1][3] == 1) {
                winner = 1;
            } else if (arr[2][1] == 1 && arr[2][2] == 1 && arr[2][3] == 1) {
                winner = 1;
            } else if (arr[3][1] == 1 && arr[3][2] == 1 && arr[3][3] == 1) {
                winner = 1;
            } else if (arr[3][1] == 1 && arr[2][2] == 1 && arr[1][3] == 1) {
                winner = 1;
            } else if (arr[1][1] == 1 && arr[2][2] == 1 && arr[3][3] == 1) {
                winner = 1;
            } else player++;
        }
        
        if (player == 2) {
            //player 2's input
            printf("Player 2, please choose a cell. Enter row number (1, 2, or 3)");
            scanf("%ld", &row);
            printf("Enter column number (1, 2, or 3).");
            scanf("%ld", &column);
            
            //add input to board
            arr [row][column] = 2;
            
            printf("\n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld \n\n%ld \t\t%ld \t\t%ld\n\n", arr[1][1], arr[1][2],arr[1][3],arr[2][1], arr[2][2],arr[2][3],arr[3][1], arr[3][2],arr[3][3]);
            
            //add a
            chosen++;
            
            if (arr[1][1] == 2 && arr[2][1] == 2 && arr[3][1] == 2) {
                winner = 2;
            } else if (arr[1][2] == 2 && arr[2][2] == 2 && arr[3][2] == 2) {
                winner = 2;
            } else if (arr[1][3] == 2 && arr[2][3] == 2 && arr[3][3] == 2) {
                winner = 2;
            } else if (arr[1][1] == 2 && arr[1][2] == 2 && arr[1][3] == 2) {
                winner = 2;
            } else if (arr[2][1] == 2 && arr[2][2] == 2 && arr[2][3] == 2) {
                winner = 2;
            } else if (arr[3][1] == 2 && arr[3][2] == 2 && arr[3][3] == 2) {
                winner = 2;
            } else if (arr[3][1] == 2 && arr[2][2] == 2 && arr[1][3] == 2) {
                winner = 2;
            } else if (arr[1][1] == 2 && arr[2][2] == 2 && arr[3][3] == 2) {
                winner = 2;
            } else player--;
        }
        //player 1 wins
        if (winner == 1) {
            printf("Player 1 wins!!!\n\n");
            return;
        }
        //player 2 wins
        if (winner == 2) {
            printf("Player 2 win!!!\n\n");
            return;
        }
    } while (chosen < 9);
    printf("Draw\n\n");
    
    return;
}

@end
