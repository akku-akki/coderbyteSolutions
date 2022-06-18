/**
 * GIven an integer num, return the number of steps to reduce it to zero
 * 
 *  if the current number is even, you have to divide it by 2,
 *  otherwise you have to subtract 1 from it
 */

void main() {
  print(stepForReduceingToZero(41));
}

int stepForReduceingToZero(int number, {int steps = 0}) {
  if (number == 0) {
    return steps;
  }
  if (number % 2 == 0) {
    return stepForReduceingToZero((number ~/ 2), steps: steps + 1);
  } else {
    return stepForReduceingToZero(number - 1, steps: steps + 1);
  }
}
