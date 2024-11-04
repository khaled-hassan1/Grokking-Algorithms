Map<int, List<int>> multiplicationTable(List<int> list) {
  List<int> elements = [for (int i = 0; i < list.length; i++) list[i]];
  Map<int, List<int>> mapHold = Map.fromIterable(
    elements,
    key: (element) => element,
    value: (element) {
      List<int> row = [];
      for (var i = 0; i < elements.length; i++) {
        row.add(element * elements[i]);
      }
      return row;
    },
  );
  return mapHold;
}
