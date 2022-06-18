import 'reverse_a_number.dart';

void main() {
  print(isNumberPalindrome(123432));
}

bool isNumberPalindrome(int n) {
  return n == reverseNumberSol2(n);
}
