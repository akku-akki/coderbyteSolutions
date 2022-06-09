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
  printPyramid(6);
}

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
