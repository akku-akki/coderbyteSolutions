String firstReverse(String str) {
  return str.split('').reversed.join('');
}

void main() {
  print(firstReverse('ankit'));
}
