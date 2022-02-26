
//  mth => 2
String firstReverse(String str) {
  return str.split('').reversed.join('');
}

  // mth => 1
  // String firstReverse(String str) {
  //   // code goes here
  //   final temp = <String>[];
  //   for (int i = str.length - 1; i >= 0; i--) {
  //     temp.add(str[i]);
  //   }
  //   final ans = temp.join('');
  //   return ans;
  // }

void main() {
  print(firstReverse('ankit'));
}
