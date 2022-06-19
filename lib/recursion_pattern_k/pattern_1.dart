import "dart:io";

void main() {
  pattern01(4, 0);
  print('');
  pattern02(4, 0);
}

void pattern01(int row, int column) {
  if (row == 0) {
    return;
  }
  if (row > column) {
    stdout.write("*");
    pattern01(row, column + 1);
  } else {
    print('');
    pattern01(row - 1, 0);
  }
}

void pattern02(int row, int column) {
  if (row == 0) {
    return;
  }
  if (row > column) {
    pattern02(row, column + 1);
    stdout.write("*");
  } else {
    pattern02(row - 1, 0);
    print('');
  }
}
