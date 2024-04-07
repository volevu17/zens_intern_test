import 'dart:math';

void miniMaxSum(List<int> arr) {
  int totalSum = arr.reduce((a, b) => a + b);
  int minVal = arr.reduce(min);
  int maxVal = arr.reduce(max);

  int minSum = totalSum - maxVal;
  int maxSum = totalSum - minVal;

  print('Min sum: $minSum, Max sum: $maxSum');
}

void printCountTotal(List<int> arr) {
  print('Count: ${arr.length}');
}

void printMin(List<int> arr) {
  print('Min value: ${arr.reduce(min)}');
}

void printMax(List<int> arr) {
  print('Max value: ${arr.reduce(max)}');
}

void printEvenValues(List<int> arr) {
  var evenElements = arr.where((element) => element.isEven).toList();
  print('Even values in the array: $evenElements');
}

void printOddValues(List<int> arr) {
  var oddElements = arr.where((element) => element.isOdd).toList();
  print('Odd values in the array: $oddElements');
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];

  miniMaxSum(arr);

  // Bonus
  printCountTotal(arr);
  printMin(arr);
  printMax(arr);
  printEvenValues(arr);
  printOddValues(arr);
}
