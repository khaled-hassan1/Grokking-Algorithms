Map<String, int> countWordFrequency(List<String> words){
 final Map<String, int> frequency = {};
  for (String word in words) {
    if (!frequency.containsKey(word)) {
      frequency[word]=1;
    }
    else{
      frequency[word]=frequency[word]! + 1;
    }
  }
  return frequency;
}