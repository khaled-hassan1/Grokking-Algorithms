class Employee {
  String name;
  int salary;
  Employee(this.name, this.salary);

  @override
  String toString() => 'Employee(\'$name\', $salary)';
}

/// Selection Sort Part

int findLowestEmployeeTest2(List<Employee> employees) {
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

List<Employee> selectionSortTest2(List<Employee> employees) {
  List<Employee> newList = [];
  List<Employee> copyList = [...employees];
  while (copyList.length > 0) {
    int index = findLowestEmployeeTest2(copyList);
    newList.add(copyList.removeAt(index));
  }
  return newList;
}

/// Binary Search Part

int binarySearchTest2(List<Employee> sortedEmployees, int targetSalary) {
  int low = 0;
  int high = sortedEmployees.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = sortedEmployees[mid].salary;
    if (guess == targetSalary) {
      return mid;
    } else if (guess < targetSalary) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}
