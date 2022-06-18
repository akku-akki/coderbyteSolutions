void main() {
  print(countZeros(10234));
}

int countZeros(int n, {int zeroCount = 0}) {
  if (n % 10 == n) {
    return zeroCount;
  }
  int rem = n % 10;
  if (rem == 0) {
    zeroCount = zeroCount + 1;
  }
  int zeros = countZeros(n ~/ 10, zeroCount: zeroCount);
  return zeros;
}
