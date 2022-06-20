void main() {
  print(subSet([1, 2, 3]));
}

List<List<int>> subSet(List<int> arr) {
  List<List<int>> outerList = [];
  outerList.add([]);
  for (int num in arr) {
    int n = outerList.length;
    for (int i = 0; i < n; i++) {
      List<int> internal = List.from(outerList[i]);
      internal.add(num);
      outerList.add(internal);
    }
  }
  return outerList;
}
