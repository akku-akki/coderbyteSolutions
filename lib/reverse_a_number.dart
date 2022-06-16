void main() {
  reverseNumber1(
    5837,
  );
}

void reverseNumber1(int no, {int sum = 0}) {
  if (no == 0) {
    print(sum);
    return;
  }

  final rem = no % 10;
  sum = sum * 10 + rem;
  reverseNumber1(no ~/ 10, sum: sum);
}
