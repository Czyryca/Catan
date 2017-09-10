Calculates probability of various hand sizes when your turn comes around in Settlers of Catan, and demonstrates how well Matlab is designed for working with matrices. Assumes a 4 player game, with robbers halving your hand size, rounded up. You could change the number of players by editing endSize.m. Does not take into account the resource gained by stealing if you roll a 7 on your turn.

endSize inputs:
starting -- your integer hand size at the end of your turn
transistion -- the transition matrix produced by transition.m

transition inputs:
distro -- a 1x12 matrix containing the number of resources gained for each role of 1 through 12.

EX: if you gain 2 resources on a 6, 1 on an 8, and 3 on a 10, your input should be:

[0,0,0,0,0,2,0,1,0,10,0,0]

Note that elements 1 and 7 (one indexed) will always be set to 0, because a 1 can't be rolled on 2d6 and a 7 cannot produce resources.
