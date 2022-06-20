/**
 * 1. divide array into 2 Parts.
 * 2. get both parts soeted via recurssion.
 * 3. merge the sorted parts
 */

void main() {
  final array = [5, 4, 3, 2, 1, 0, -1];
  print(mergeSort(array));
}

List<int?> mergeSort(List<int> array) {
  if (array.length == 1) {
    return array;
  }

  int mid = array.length ~/ 2;
  final first = mergeSort(array.sublist(0, mid));
  final second = mergeSort(array.sublist(mid, array.length));

  return _merge(first, second);
}

List<int?> _merge(List<int?> first, List<int?> second) {
  List<int?> sortedList = List.filled(first.length + second.length, null);
  int i = 0;
  int j = 0;
  int k = 0;

  while (i < first.length && j < second.length) {
    if (first[i]! < second[j]!) {
      sortedList[k] = first[i];
      i++;
    } else {
      sortedList[k] = second[j];
      j++;
    }
    k++;
  }

  while (i < first.length) {
    sortedList[k] = first[i];
    i++;
    k++;
  }

  while (j < second.length) {
    sortedList[k] = second[j];
    j++;
    k++;
  }

  return sortedList;
}
