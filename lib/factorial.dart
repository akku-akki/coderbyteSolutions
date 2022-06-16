void main() {
  final result = printFactorial(10);
  print(result);
}

int printFactorial(int n) {
  if (n < 0) {
    throw 'input cannot be less than 0';
  }
  if (n == 0 || n == 1) {
    return 1;
  }

  int fact = n * printFactorial(n - 1);
  return fact;
}
