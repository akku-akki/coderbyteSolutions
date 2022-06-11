// Directions
/*
  Write  fun that accepts a positive number N.
  with N levels using the # character. 
  Make sure the pyramid has spaces on both the left and right hand sides
  (EX)
  pyramid(1)
  '#'
  pyramid(2)
  ' # '
  '###' 

*/

void main() {
  printPyramidRecursive(6);
}

/// SOLUTION 1
void printPyramid(int n) {
  int row = n;
  int col = (2 * n) - 1;
  int mid = n;

  for (int i = 1; i < row + 1; i++) {
    String level = '';
    for (int j = 1; j < col + 1; j++) {
      if (j <= mid - i || j >= mid + i) {
        level = level + ' ';
      } else {
        level = level + '#';
      }
    }
    print(level);
  }
}

/// SOL 2
void printPyramidRecursive(int n, {int row = 0, String level = ''}) {
  if (n == row) {
    return;
  }
  if (level.length == 2 * n - 1) {
    print(level);
    return printPyramidRecursive(n, row: row + 1);
  }

  int mid = n - 1;
  late String add;
  if (mid - row <= level.length && mid + row >= level.length) {
    add = '#';
  } else {
    add = ' ';
  }
  printPyramidRecursive(n, row: row, level: level + add);
}
