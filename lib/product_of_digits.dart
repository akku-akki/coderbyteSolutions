void main() {
  print(calculateProductOfNumber(1234));
}

int calculateProductOfNumber(int n) {
  if (n % 10 == n) {
    return n;
  }
  print(n);
  int product = (n % 10) * calculateProductOfNumber(n ~/ 10);

  return product;
}
