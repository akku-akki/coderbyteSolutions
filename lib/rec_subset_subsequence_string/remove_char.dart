void main() {
  print(skip('baccab'));
  print(skip2('casadafavagg'));
  print(skipApple('zxcvapplemmnn'));
  print(skipAppNotApple('  bfeubgcmro -> app <- jfh gih ->apple -<jm goier'));
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

/// SOLUTION with single argument
String skip2(String processed) {
  if (processed == '') {
    return '';
  }

  final char = processed[0];
  if (char == 'a') {
    return skip2(processed.substring(1));
  } else {
    return char + skip2(processed.substring(1));
  }
}

String skipApple(String fruit) {
  if (fruit == '') {
    return '';
  }
  if (fruit.startsWith('apple')) {
    return skipApple(fruit.substring(5));
  } else {
    return fruit[0] + skipApple(fruit.substring(1));
  }
}

String skipAppNotApple(String fruit) {
  if (fruit == '') {
    return '';
  }
  if (fruit.startsWith('app') && !fruit.startsWith('apple')) {
    return skipAppNotApple(fruit.substring(3));
  } else {
    return fruit[0] + skipAppNotApple(fruit.substring(1));
  }
}
