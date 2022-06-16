void main() {
  print(sumOfNumbers(00));
}

int sumOfNumbers(int n) {
  if (n < 0 || n == 0) {
    throw 'NUmber cannot be negative';
  }
  if (n == 1) {
    return 1;
  }

  int sum = n + sumOfNumbers(n - 1);
  return sum;
}
