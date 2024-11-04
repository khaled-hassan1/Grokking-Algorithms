int findSmallestString(List<String> list) {
  String smallest = list[0];
  int index = 0;
  for (var i = 0; i < list.length; i++) {
    // تنازلي
    // if (list[i].compareTo(smallest) > 0) {
    //تصاعدي
    if (list[i].compareTo(smallest) < 0) {
      smallest = list[i];
      index = i;
    }
  }
  return index;
}

List<String> selectionSortOne(List<String> list) {
  List<String> newlist = [];
  final copyList = [...list];
  while (copyList.isNotEmpty) {
    int smallest = findSmallestString(copyList);
    newlist.add(copyList.removeAt(smallest));
  }
  return newlist;
}
