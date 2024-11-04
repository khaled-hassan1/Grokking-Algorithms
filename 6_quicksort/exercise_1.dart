List<int> quickSort(List<int> list) {
  if (list.length < 2) {
    return list;
  }
  final int pivot = list[0];
  List<int> less = [
    for (int i = 1; i < list.length; i++)
      if (list[i] <= pivot) list[i]
  ];
  List<int> greater = [
    for (int i = 1; i < list.length; i++)
      if (list[i] > pivot) list[i]
  ];

  return quickSort(less) + [pivot] + quickSort(greater);
}
