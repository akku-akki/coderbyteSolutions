// SOMETHING WRONG WITH QUESTION AND IMPL

void main() {
  printDIceOccurance('', 4);
}

void printDIceOccurance(String processed, int target) {
  if (target == 0) {
    print(processed);
    return;
  }

  for (int i = 1; i <= 6 && i <= target; i++) {
    printDIceOccurance(processed + i.toString(), target - i);
  }
}
