// get all possible path

void main() {
  getPath('', 3, 3);
  print(retPaths('', 3, 3));
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

List<String> retPaths(String p, int r, int c) {
  if (r == 1 && c == 1) {
    List<String> path = []..add(p);
    return path;
  }

  List<String> list = [];

  if (r > 1) {
    list.addAll(retPaths(p + 'D', r - 1, c));
  }

  if (c > 1) {
    list.addAll(retPaths(p + 'R', r, c - 1));
  }

  return list;
}
