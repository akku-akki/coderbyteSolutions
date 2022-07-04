// get all possible path

void main() {
  getPath('', 3, 3);
}

void getPath(String p, int r, int c) {
  if (r == 1 && c == 1) {
    print(p);
    return;
  }

  if (r > 1) {
    getPath(p + 'D', r - 1, c);
  }

  if (c > 1) {
    getPath(p + 'R', r, c - 1);
  }
}
