List getChunks(List list, int size) {
  List chunked = [];
  int index = 0;
  bool canFit;

  if (list.length % size == 0) {
    canFit = true;
  } else {
    canFit = false;
  }

  while (index < list.length) {
    int? splitSize;
    if (!canFit && index == list.length - 1) {
      splitSize = null;
    } else {
      splitSize = index + size;
    }
    chunked.add(list.sublist(index, splitSize));
    index = index + size;
  }

  return chunked;
}

void main() {
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 2));
}
