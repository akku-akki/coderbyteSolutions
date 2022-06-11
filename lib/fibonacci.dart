/*
Print out the n-th entry in the fibonacci series
The fibonacci series is an ordering of numbers where
each number is the sum of the preceeding two.
for ex.
0,1,1,2,3,5,8,13,21,34
forms the first ten entries of the fibonacci series.
ex.
fib(4) == 3 
 */

/// SOLUTION I ITERATIVE

int fib(int n) {
  final result = [0, 1];

  for (int i = 2; i <= n; i++) {
    int a = result[i - 1];
    int b = result[i - 2];

    result.add(a + b);
  }

  return result.last;
}


