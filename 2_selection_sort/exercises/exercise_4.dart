class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  @override
  String toString() => 'Employee(\'$name\', $salary)';
}

List<Employee> employees = [
  Employee('John', 60000),
  Employee('Jane', 75000),
  Employee('Alex', 50000),
  Employee('Mary', 80000)
];

int findLowestEmployee(List<Employee> employees) {
  var lowest = employees[0];
  int index = 0;
  for (var i = 1; i < employees.length; i++) {
    if (employees[i].salary < lowest.salary) {
      lowest = employees[i];
      index = i;
    }
  }
  return index;
}

List<Employee> selectionSortFour(List<Employee> employees) {
  List<Employee> newList = [];
  List<Employee> copyList = [...employees];
  while (copyList.isNotEmpty) {
    int lowestIndex = findLowestEmployee(copyList);
    newList.add(copyList.removeAt(lowestIndex));
  }
  return newList;
}
