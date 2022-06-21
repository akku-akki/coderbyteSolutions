void main() {
  printPermutations('ab');
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
