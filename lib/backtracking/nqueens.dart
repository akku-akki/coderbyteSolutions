import 'dart:math' as Math;

void main() {
  int n = 4;
  final list = [
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
    [" _ ", " _ ", " _ ", " _ "],
  ];
  List<List<String>> board = List.generate(
    n,
    (index) => List.generate(n, (index) => ' _ '),
  );
  print(list);
  print(queens(board, 0));
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

  // diagonal right

  for (int c = col, r = row; c < board.length && r >= 0; r--, c++) {
    if (board[r][c] == ' Q ') {
      return false;
    }
  }

  // diagonal left
  for (int c = col, r = row; c >= 0 && r >= 0; r--, c--) {
    if (board[r][c] == ' Q ') {
      return false;
    }
  }

  return true;
}

void display(List<List<String>> board) {
  board.forEach((e) => print(e));
  print('\n');
}
