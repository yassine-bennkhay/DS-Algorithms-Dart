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

  stdout.write("please enter your target number :\n");
  var target = int.parse(stdin.readLineSync()!);

 print(sumOfTwoNumbers(target, [1, 3, 5, 4, 5, 6, 5]));
}
