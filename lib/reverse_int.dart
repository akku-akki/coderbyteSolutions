int reverseInt(int no) {
  final number =
      no.toString().replaceFirst('-', '').split('').reversed.join('');

  if (no < 0) {
    return int.parse(number) * -1;
  }
  return int.parse(number);
}

void main() {
  print(reverseInt(43).toString());
  print(reverseInt(-43).toString());
  print(reverseInt(354).toString());
  print(reverseInt(487).toString());
  print(reverseInt(903).toString());
  print(reverseInt(4).toString());
  print(reverseInt(300).toString());
  print(reverseInt(-300).toString());
}
