2 step approach

  1-- What we are doing
  2-- how we are doing

  










  /// UTILS
  List<List<String>> buildBoard(int n) {
  final board = List<List<String>>.filled(
    n,
    List.filled(n, '_'),
  );
  return board;
}

void printBoard(List<List<String>> board) {
  for (int i = 0; i < board.length; i++) {
    print(board[0].toString());
  }
}
