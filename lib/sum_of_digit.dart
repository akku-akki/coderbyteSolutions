void main() {
  print(calculateSumOfDigits(1234));
}

int calculateSumOfDigits(int n) {
  if (n == 0) {
    return 0;
  }
  return (n % 10) + calculateSumOfDigits((n ~/ 10));
}
