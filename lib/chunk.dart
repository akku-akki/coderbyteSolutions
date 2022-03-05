List getChunks(List list, int size) {
  final List<List> chunked = [];

  for (final element in list) {
    if (chunked.isEmpty) {
      chunked.add([element]);
    } else {
      final last = chunked.last;
      if (last.length < size) {
        last.add(element);
      } else {
        chunked.add([element]);
      }
    }
  }

  return chunked;
}

/// THis needs to be fixed
// List getChunks(List list, int size) {
//   List chunked = [];
//   int index = 0;
//   bool canFit;

//   if (list.length % size == 0) {
//     canFit = true;
//   } else {
//     canFit = false;
//   }

//   while (index < list.length) {
//     int? splitSize;
//     if (!canFit && index == list.length - 1) {
//       splitSize = null;
//     } else {
//       splitSize = index + size;
//     }
//     chunked.add(list.sublist(index, splitSize));
//     index = index + size;
//   }

//   return chunked;
// }

void main() {
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9, 0], 2));
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 5));
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 3));
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 8));
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 6));
  print(getChunks([1, 23, 3, 34, 5, 6, 7, 8, 9], 9));
}
