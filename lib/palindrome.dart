bool isPalindrome(String str) {
  final strArray = str.split('');
  late bool result;
  for (int i = 0; i <= strArray.length - 1; i++) {
    if (strArray[i] == strArray[strArray.length - i - 1]) {
      result = true;
      continue;
    } else {
      result = false;
      break;
    }
  }
  return result;
}

// bool isPalindrome(String str) {
//   final revStr = str.split('').reversed.join();
//   return revStr == str;
// }

void main() {
  print(isPalindrome('rtr'));
  print(isPalindrome('rqwwqtr'));
  print(isPalindrome('abba'));
  print(isPalindrome('bob'));
  print(isPalindrome('rob'));
}
