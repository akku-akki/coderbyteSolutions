void main() {
  print(capitalize('a a'));
  print(capitalize('a short sentence'));
  print(capitalize('a lazy fox'));
  print(capitalize('look, it is working!'));
}

//// SOLUTION = 2

String capitalize(String str) {
  String result = str[0].toUpperCase();

  for (int i = 1; i < str.length; i++) {
    if (str[i - 1] == '') {
      result += str[i].toUpperCase();
    } else {
      result += str[i];
    }
  }

  return result;
}




//// SOLUTION 1

// String capitalize(String str) {
//   final words = [];

//   for (String data in str.split(' ')) {
//     print(data);
//     words.add(data[0].toUpperCase() + data.substring(1));
//   }

//   return words.join(' ');
// }
