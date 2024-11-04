List<int> findIntersection(final List<int> list1, final List<int> list2) {
  final Set<int> result = {};
  final Set<int> list2Copy = list2.toSet();
  for (final int element in list1) {
    if (list2Copy.contains(element)) {
      result.add(element);
    }
  }
  return result.toList();
}
