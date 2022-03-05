bool isAnagram(String a, String b) {
  final hashA = getHashFromString(a.toLowerCase());
  final hashB = getHashFromString(b.toLowerCase());

  if (hashA.keys.length != hashB.keys.length) {
    return false;
  }

  for (final keys in hashA.keys) {
    if (hashA[keys] != hashB[keys]) {
      return false;
    }
  }

  return true;
}

Map<String, int> getHashFromString(String str) {
  final Map<String, int> charHash = {};
  final resultStr = str.replaceAll(RegExp(r'[^a-z0-9]'), '');
  resultStr.split('').forEach((element) {
    if (charHash.containsKey(element)) {
      charHash[element] = charHash[element]! + 1;
    } else {
      charHash.addAll({element: 1});
    }
  });
  return charHash;
}

void main() {
  print(isAnagram('rail safety', 'fairy tales'));
  print(isAnagram('RAIL! SAFETY!', 'fairy tales'));
  print(isAnagram('Hi there', 'Bye there'));
  print(isAnagram('A decimal point', "I'm a dot in place"));
}
