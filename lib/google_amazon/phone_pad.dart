//- Letter Combinations of a Phone Number

void main() {
  pad('', '12');
  print(padRet('', '12'));
}

int _getDigitFromUnicode(int code) {
  int _code = code;
  int _zeroCode = '0'.codeUnits.first;
  final digit = _code - _zeroCode;
  return digit;
}

void pad(String p, String up) {
  if (up.isEmpty) {
    print(p);
    return;
  }
  int digit = _getDigitFromUnicode(up.codeUnitAt(0));
  // up.codeUnitAt(0) - '0'.codeUnits.first; // this will convert '2' into 2
  for (int i = (digit - 1) * 3; i < digit * 3; i++) {
    final aUniCode = 'a'.codeUnits.first;
    final nextCode = aUniCode + i;
    final ch = String.fromCharCode(nextCode);
    pad(p + ch, up.substring(1));
  }
}

List<String> padRet(String p, String up) {
  if (up.isEmpty) {
    List<String> list = [];
    list.add(p);
    return list;
  }
  int digit = _getDigitFromUnicode(up.codeUnitAt(0));
  List<String> list = [];

  // up.codeUnitAt(0) - '0'.codeUnits.first; // this will convert '2' into 2
  for (int i = (digit - 1) * 3; i < digit * 3; i++) {
    final aUniCode = 'a'.codeUnits.first;
    final nextCode = aUniCode + i;
    final ch = String.fromCharCode(nextCode);
    list.addAll(padRet(p + ch, up.substring(1)));
  }
  return list;
}


    // static int padCount(String p, String up) {
    //     if (up.isEmpty()) {
    //         return 1;
    //     }
    //     int count = 0;
    //     int digit = up.charAt(0) - '0'; // this will convert '2' into 2
    //     for (int i = (digit - 1) * 3; i < digit * 3; i++) {
    //         char ch = (char) ('a' + i);
    //         count = count + padCount(p + ch, up.substring(1));
    //     }
    //     return count;
    // }