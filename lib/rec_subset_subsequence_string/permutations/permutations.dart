void main() {
  printPermutations('ab');
  print(permutationList('abc'));
  countPermutations('abc');
}

void printPermutations(String real,
    {String processed = '', List<String>? data}) {
  if (data == null) {
    data = [];
  }
  if (real.isEmpty) {
    data.add(processed);
    print(data);
    print(processed);
    return;
  }
  final ch = real[0];
  for (int i = 0; i <= processed.length; i++) {
    String f = processed.substring(0, i);
    String s = processed.substring(i, processed.length);
    printPermutations(real.substring(1), processed: f + ch + s, data: data);
  }
}

List<String> permutationList(String real, {String processed = ''}) {
  if (real.isEmpty) {
    final _list = <String>[];
    _list.add(processed);
    return _list;
  }
  final _list = <String>[];
  final ch = real[0];
  for (int i = 0; i <= processed.length; i++) {
    String f = processed.substring(0, i);
    String s = processed.substring(i, processed.length);
    _list.addAll(permutationList(real.substring(1), processed: f + ch + s));
  }
  return _list;
}

int countPermutations(String real, {String processed = ''}) {
  if (real.isEmpty) {
    return 1;
  }
  int count = 0;
  final ch = real[0];
  for (int i = 0; i <= processed.length; i++) {
    final f = processed.substring(0, i);
    final s = processed.substring(i, processed.length);
    count = count + countPermutations(real.substring(1), processed: f + ch + s);
  }
  return count;
}
