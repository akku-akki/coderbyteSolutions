/*
  Write a function that accepts an integer N
  and returns a N*N spiral matrix.

  NOTE : NUMBER PLACED ARE IN SPIRAL 

  matrix(2)
  [[1,2],
  [4,3]]

  matrix(3)
  [[1,2,3],
  [8,9,4],
  [7,6,5]]

 Approach

  create empty array of arrays called result
  create a counter variable, starting at 1
  As long as (start column <= end column) And (start row <= end row)
     Loop from start column to end column
        At results[start_row][i]assign counter variable
        Increment counter
     Increment start row
     Loop from start row to end row
        At results[i][end_column] assign counter variable
        Increment counter
     Decrement end row
     ...repeat for other two sides      m 
*/

List matrix(int n) {
  final List<List<int?>> results = [];

  for (int i = 0; i < n; i++) {
    results.add(List.filled(n, null));
  }

  int counter = 1;
  int startColumn = 0;
  int endColumn = n - 1;
  int startRow = 0;
  int endRow = n - 1;

  while (startColumn <= endColumn && startRow <= endRow) {
    // Top Row
    for (int i = startColumn; i <= endColumn; i++) {
      results[startRow][i] = counter;
      counter++;
    }
    startRow++;

    // Right Column
    for (int i = startRow; i <= endRow; i++) {
      results[i][endColumn] = counter;
      counter++;
    }
    endColumn--;
    // Bottom Row

    for (int i = endColumn; i >= startColumn; i--) {
      results[endRow][i] = counter;
      counter++;
    }
    endRow--;

    // start column
    for (int i = endRow; i >= startRow; i--) {
      results[i][startColumn] = counter;
      counter++;
    }
    startColumn++;
  }
  return results;
}
