/*
  Write a function that returns the number of vowels
  used in a string. Vowels are the characters 'a,e,i,o,u'

  Example: 
  vowels('Hi There!') => 3
  vowels('Why do you ask?') => 4
  vowels('WHY?') => 0
*/

void main() {
  int count = countVowels('WHY?');
  print(count);
}

int countVowels(String vowels) {
  int count = 0;
  const checker = ['a', 'e', 'i', 'o', 'u'];
  final lowerCaseVowels = vowels.toLowerCase();

  for (int i = 0; i < lowerCaseVowels.length; i++) {
    if (checker.contains(lowerCaseVowels[i])) {
      count++;
    }
  }
  return count;
}
