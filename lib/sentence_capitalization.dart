void main() {
  print(capitalize('a short sentence'));
  print(capitalize('a lazy fox'));
  print(capitalize('look, it is working!'));
}

String capitalize(String str) {
  final words = [];

  for (String data in str.split(' ')) {
    words.add(data[0].toUpperCase() + data.substring(1));
  }

  return words.join(' ');
}
