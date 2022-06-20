void main() {
  print(skip('baccab'));
}

String skip(String processed, {String ans = ''}) {
  if (processed == '') {
    return ans;
  }

  final char = processed[0];
  if (char == 'a') {
    return skip(processed.substring(1), ans: ans);
  } else {
    return skip(processed.substring(1), ans: ans + processed[0]);
  }
}
