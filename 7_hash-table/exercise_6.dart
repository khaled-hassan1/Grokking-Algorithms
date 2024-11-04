int findTheMostFrequentElementInAList(final List<int> list) {
  final Map<int, int> map = {};
  int maxFrequency = 0;
  int mostFrequentElement = -1;

  for (int i = 0; i < list.length; i++) {
    if (!map.containsKey(list[i])) {
      map[list[i]] = 1;
    } else {
      map[list[i]] = map[list[i]]! + 1;
    }
  }
  map.forEach(
    (key, value) {
      if (value > maxFrequency) {
        maxFrequency = value;
        mostFrequentElement = key;
      }
    },
  );
  return mostFrequentElement;
}
