// ONLY LEFT OR RIGHT

void main() {
  final list = [
    [true, true, true],
    [true, false, true],
    [true, true, true],
  ];
  pathRestriction('', list, 0, 0);
}

void pathRestriction(String p, List<List<bool>> maze, int r, int c) {
  if (r == maze.length - 1 && c == maze[0].length - 1) {
    print(p);
    return;
  }
  if (!maze[r][c]) {
    return;
  }

  if (r < maze.length - 1) {
    pathRestriction(p + 'D', maze, r + 1, c);
  }

  if (c < maze[0].length - 1) {
    pathRestriction(p + 'R', maze, r, c + 1);
  }
}
