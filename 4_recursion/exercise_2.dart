int countOccurrences(List<int> arr, int target) {
  // Base case
  if (arr.isEmpty) {
    return 0;
  }
  // Recursive case
  int count = (arr[0] == target) ? 1 : 0;
  return count + countOccurrences(arr.sublist(1), target);
}
