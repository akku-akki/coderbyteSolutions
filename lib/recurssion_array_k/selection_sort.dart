void main() {
  final array = [4, 3, 2, 1, 89, 54, 32, 90, -1, -3, -2];
  print(selectionSort(array, array.length));
}

selectionSort(
  List<int> array,
  int row, {
  int column = 0,
  int indexOfMax = 0,
}) {
  if (row == 0) {
    print('FInal ANs');
    print(array);
    return;
  }
  if (column < row) {
    if (array[column] > array[indexOfMax]) {
      selectionSort(array, row, column: column + 1, indexOfMax: column);
    } else {
      selectionSort(array, row, column: column + 1, indexOfMax: indexOfMax);
    }
  } else {
    final temp = array[indexOfMax];
    array[indexOfMax] = array[row - 1];
    array[row - 1] = temp;
    print(array);

    selectionSort(array, row - 1, column: 0, indexOfMax: 0);
  }
}
