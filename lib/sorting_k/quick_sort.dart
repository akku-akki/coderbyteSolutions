/**
 * 
 *  Pivot: Choose any element => after first pass
 * all the element < P wiil be on LHS of p
 * and elements > p will be at RHS of P
 * 
 * NOTES: 
 *  # NOT STABLE this
 *  # in-place => prefered for array instead of mergeSort
 *    MS takes o(M) extra space
 *  # MS is better in linkedList due to memory allocation => not continuous
 * 
 * SEARCH hybrid algo (eg TImSort)
 */

void main() {
  final list = [5, 6, 9, 26, 0];
  quickSort(list, 0, list.length - 1);
}

void quickSort(List<int> list, int low, int hi) {
  if (low >= hi) {
    print(list);
    return;
  }

  int s = low;
  int e = hi;
  // pivot can be any thing end or start or elementOn[Array]
  //  complexity can be variable based on pivot
  int pivotIndex = s + (e - s) ~/ 2;

  while (s <= e) {
    while (list[s] < list[pivotIndex]) {
      s++;
    }
    while (list[e] > list[pivotIndex]) {
      e--;
    }
    if (s <= e) {
      int temp = list[s];
      list[s] = list[e];
      list[e] = temp;
      s++;
      e--;
    }
  }
  quickSort(list, low, e);
  quickSort(list, s, hi);
}
