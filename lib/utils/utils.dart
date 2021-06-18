// returns 1 if Player 1 or 2 if Player 2, won the game
int checkWin(List grid) {
  List winStates = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  for (var i = 0; i < winStates.length; i++) {
    if (grid[winStates[i][0]] == 1 &&
        grid[winStates[i][1]] == 1 &&
        grid[winStates[i][2]] == 1) {
      return 1;
    } else if (grid[winStates[i][0]] == 2 &&
        grid[winStates[i][1]] == 2 &&
        grid[winStates[i][2]] == 2) {
      return 2;
    }
  }
  return 0;
}
