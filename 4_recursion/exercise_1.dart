int sumArray(List<int> arr) {
  // Base case
  if (arr.isEmpty) {
    return 0;
  }
  // Recursive case
  return arr[0] + sumArray(arr.sublist(1));
}
