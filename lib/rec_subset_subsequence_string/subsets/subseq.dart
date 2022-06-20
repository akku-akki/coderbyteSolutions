void main() {
  subseq('abc');
  print(subseqRet('abc'));
  subseqAscii('abc');
}

void subseq(String p, {String up = ''}) {
  if (p.isEmpty) {
    print(up);
    return;
  }
  final char = p[0];
  subseq(p.substring(1), up: up + char);
  subseq(p.substring(1), up: up);
}

List<String> subseqRet(String p, {String up = ''}) {
  if (p.isEmpty) {
    List<String> data = [];
    data.add(up);
    return data;
  }
  final char = p[0];
  final left = subseqRet(p.substring(1), up: up + char);
  final right = subseqRet(p.substring(1), up: up);
  left.addAll(right);

  return left;
}

void subseqAscii(String p, {String up = ''}) {
  if (p.isEmpty) {
    print(up);
    return;
  }
  final char = p[0];
  subseqAscii(p.substring(1), up: up + char);
  subseqAscii(p.substring(1), up: up);
  subseqAscii(p.substring(1), up: up + char.codeUnits.first.toString());
}
