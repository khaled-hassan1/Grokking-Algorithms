
findSmallest(list){
  var smallest = list[0];
  var index = 0;
  for (var i = 0; i < list.length; i++) {
    if (list[i] < smallest) {
      smallest = list[i];
      index = i;
    }
  }
  return index;
}

selectionSortTwo(list){
  final newList=[];
  final copyList=[...list];
  for (var i = 0; i < list.length; i++) {
    final smallest = findSmallest(copyList);
    newList.add(copyList.removeAt(smallest));
  }
  return newList;
}