List<List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> anagramsMap = {};

  for (String word in words) {
    List<String> sortedWords = word.split('')..sort();
    String sortedKey = sortedWords.join('');
    if (anagramsMap.containsKey(sortedKey)) {
      anagramsMap[sortedKey]!.add(word);
    } else {
      anagramsMap[sortedKey] = [word];
    }
  }
  return anagramsMap.values.toList();
}
