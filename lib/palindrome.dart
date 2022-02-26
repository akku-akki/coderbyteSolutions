bool isPalindrome(String str) {
  final revStr = str.split('').reversed.join();
  return revStr == str;
}

void main() {
  print(isPalindrome('rtr'));
  print(isPalindrome('rqwwqtr'));
  print(isPalindrome('abba'));
  print(isPalindrome('bob'));
  print(isPalindrome('rob'));
}
