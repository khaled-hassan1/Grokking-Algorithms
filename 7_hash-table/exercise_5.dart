// leetcode
int findTheFirstNonRepeatingCharacter(final String str) {
  final Map<String, int> map = {};
  for (int i = 0; i < str.length; i++) {
    if (map.containsKey(str[i])) {
      map[str[i]] = map[str[i]]! + 1;
    } else {
      map[str[i]] = 1;
    }
  }

  for (int i = 0; i < str.length; i++) {
    if (map[str[i]] == 1) {
      return i;
    }
  }
  return -1;
}
