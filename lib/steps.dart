/*
Write a fun 
accept a +ve number

with N levels using the # character. Make sure the 
step has spaces on right hand side!

--- EX
 step(2)
 '# '
 '##'

 step(3)
 '#  '
 '## '
 '###'

*/

void main() {
  steps(10);
}

void steps(int n) {
  for (int row = 0; row < n; row++) {
    String stair = '';
    for (int column = 0; column < n; column++) {
      if (column <= row) {
        stair += '#';
      } else {
        stair += ' ';
      }
    }
    print(stair);
  }
}
