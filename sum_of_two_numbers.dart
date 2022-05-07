import 'dart:io';

List<int> sumOfTwoNumbers(int targetSum, List<int> arr) {
  for (int i = 0; i < arr.length - 1; i++) {
    int firstNum = arr[i];
    for (int j = i + 1; j < arr.length; j++) {
      int secondNum = arr[j];
      if (firstNum + secondNum == targetSum) {
        return [firstNum, secondNum];
      }
    }
  }
  return [];
}

void main() {
//test, as our target number is 9, so in the third check, i=2 and j=3, 4+5 is our answer.
  print(sumOfTwoNumbers(9, [1, 3, 5, 4, 5, 6, 5]));
}
