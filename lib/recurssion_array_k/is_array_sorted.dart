void main() {
  print(isArraySorted([1, 0]));
}

bool isArraySorted(List<int> array, {int index = 0}) {
  if (index == array.length - 1) {
    return true;
  }
  final result =
      array[index] < array[index + 1] && isArraySorted(array, index: index + 1);
  return result;
}
