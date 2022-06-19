void main() {
  final array = [1, 6, -3, 7, 2, 4, -5, 0];
  print(bubbleSortRecursion(
    array,
    row: array.length,
  ));
}

List<int> bubbleSortRecursion(List<int> array,
    {required int row, int column = 0}) {
  if (row <= 0) {
    return array;
  }
  if (column < row - 1) {
    if (array[column] > array[column + 1]) {
      int temp = array[column];
      array[column] = array[column + 1];
      array[column + 1] = temp;
    }
    return bubbleSortRecursion(array, row: row, column: column + 1);
  } else {
    return bubbleSortRecursion(array, row: row - 1, column: 0);
  }
}
