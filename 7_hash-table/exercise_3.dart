List<int> findTwoSum(List<int> numbers, int target) {
  Map<int, int> map = {};
  for (int i = 0; i < numbers.length; i++) {
    final int complement = target - numbers[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[numbers[i]] = i;
  }
  return [];
}
