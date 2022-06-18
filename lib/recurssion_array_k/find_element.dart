void main() {
  print(isElementPresent([1, 2, 3, 4, 5, 6, 7, 8], target: 0));
}

bool isElementPresent(List<int> array, {required int target, int index = 0}) {
  if (index > array.length - 1) {
    return false;
  }
  if (array[index] == target) {
    return true;
  } else {
    return isElementPresent(array, target: target, index: index + 1);
  }
}
