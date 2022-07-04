// **
//  MAZE problem if you are given a matrix of n*n and you can only go to
//  right or left how many possible paths are possible to reach.
// */

void main() {
  print(countPath(3, 3));
}

int countPath(int r, int c) {
  if (r == 1 || c == 1) {
    return 1;
  }

  int right = countPath(r - 1, c);
  int down = countPath(r, c - 1);

  return right + down;
}
