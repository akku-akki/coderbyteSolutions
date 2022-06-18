import 'dart:math' as Math;

void main() {
  print(reverseNumberSol2(
    1234,
  ));
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

// double logBase(num x, num base) => log(x) / log(base);
// double log10(num x) => log(x) / ln10;

int reverseNumberSol2(int n) {
  int digits = (Math.log(n) ~/ Math.ln10) + 1;
  return reverseHelper(n, digits);
}

int reverseHelper(int n, int digit) {
  if (n % 10 == n) {
    return n;
  }
  final rem = n % 10;
  final ans =
      (rem * Math.pow(10, digit - 1) + reverseHelper(n ~/ 10, digit - 1))
          .toInt();
  return ans;
}
