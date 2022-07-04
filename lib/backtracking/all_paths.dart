/// BACK TRACKING

void main() {
  final maze = [
    [true, true, true],
    [true, true, true],
    [true, true, true],
  ];

  // allPaths('', maze, 0, 0);
}

void allPaths(String p, List<List<bool>> maze, int r, int c) {
  if (r == maze.length - 1 && c == maze[0].length - 1) {
    print(p);
    return;
  }
  if (!maze[r][c]) {
    return;
  }

  // i am considering this block in my path
  maze[r][c] = false;

  if (r < maze.length - 1) {
    allPaths(p + 'D', maze, r + 1, c);
  }

  if (c < maze[0].length - 1) {
    allPaths(p + 'R', maze, r, c + 1);
  }

  if (r > 0) {
    allPaths(p + 'U', maze, r - 1, c);
  }

  if (c > 0) {
    allPaths(p + 'L', maze, r, c - 1);
  }

  // this line is where the function will be over
  // so before the function gets removed, also the changes that were
  // made by that function

  maze[r][c] = true;
}
