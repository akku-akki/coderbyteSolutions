void main() {
  print(findAllElementPresent([1, 0, 3, 0, 5, 0, 7, 0], target: 2));
}

List<int> findAllElementPresent(List<int> array,
    {required int target, int index = 0, List<int>? result}) {
  if (result == null) {
    result = [];
  }
  if (index > array.length - 1) {
    return result;
  }
  if (array[index] == target) {
    result.add(index);
  }

  final entries = findAllElementPresent(array,
      target: target, index: index + 1, result: result);

  return result;
}
