import 'dart:math' as Math;

void main() {
  int n = 4;
  final list = [
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
  ];
  List<List<String>> board = List.filled(n, List.filled(n, " _ "));
  print(list);
  print(queens(list, 0));
}

int queens(List<List<String>> board, int row) {
  if (row == board.length) {
    display(board);
    print('');
    return 1;
  }

  int count = 0;

  // placing the queen and checking for every row and col
  for (int col = 0; col < board.length; col++) {
    // place the queen if it is safe
    if (isSafe(board, row, col)) {
      board[row][col] = ' Q ';
      count += queens(board, row + 1);
      board[row][col] = ' _ ';
    }
  }

  return count;
}

bool isSafe(List<List<String>> board, int row, int col) {
  // check vertical row
  for (int i = 0; i < row; i++) {
    if (board[i][col] == ' Q ') {
      return false;
    }
  }

  // diagonal left
  int maxLeft = Math.min(row, col);
  for (int i = 1; i <= maxLeft; i++) {
    if (board[row - i][col - i] == ' Q ') {
      return false;
    }
  }

  // diagonal right
  int maxRight = Math.min(row, board.length - col - 1);
  for (int i = 1; i <= maxRight; i++) {
    if (board[row - i][col + i] == ' Q ') {
      return false;
    }
  }

  return true;
}

void display(List<List<String>> board) {
  board.forEach((e) => print(e));
  print('\n');
}
