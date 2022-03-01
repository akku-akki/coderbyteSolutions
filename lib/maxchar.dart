String maxChar(String data) {
  final listChar = data.split('');
  final Map<String, int> map = {};
  int max = 0;
  String maxChar = '';

  for (String character in listChar) {
    if (map.containsKey(character)) {
      map[character] = map[character]! + 1;
    } else {
      map[character] = 1;
    }
  }

  map.forEach((key, value) {
    if (map[key]! > max) {
      max = map[key]!;
      maxChar = key;
    }
  });

  return maxChar;
}

void main() {
  print(maxChar('asasasfdfgssssssssss'));
  print(maxChar('asasasfdfgxxxxxxxxxxxxxxx'));
  print(maxChar('asasasfdfgssssssssss'));
  print(maxChar('zzzzzzzzzzzzzasasasfdfgssssssssss'));
  print(maxChar('asasasfdoooooooooooooooofgssssssssss'));
  print(maxChar('asasasmmmmmmmmmmmmmmfdfgssssssssss'));
  print(maxChar('1232112231111311134100111100119881'));
}
