void main() {
  // print(countZeros(000));
  print(spCountZeros(1020));
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

/// SPecial condition how to pass a value to above calls

int spCountZeros(int n, {int count = 0}) {
  if (n == 0) {
    return count;
  }
  int rem = n % 10;
  if (rem == 0) {
    return spCountZeros(n ~/ 10, count: count + 1);
  }
  return spCountZeros(n ~/ 10, count: count);
}
