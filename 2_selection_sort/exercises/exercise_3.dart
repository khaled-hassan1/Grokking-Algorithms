
int findLowestStudent(List<Student> students) {
  var lowest = students[0];
  var index = 0;
  for (var i = 1; i < students.length; i++) {
    // by grade
    // if (students[i].grade < lowest.grade) {
    // by name
    if (students[i].name.compareTo(lowest.name) > 0) {
      lowest = students[i];
      index = i;
    }
  }
  return index;
}

List<Student> selectionSortThree(List<Student> students) {
  List<Student> newList = [];
  var copyList = [...students];
  for (var i = 0; i < students.length; i++) {
    var lowest = findLowestStudent(copyList);
    newList.add(copyList.removeAt(lowest));
  }
  return newList;
}

class Student {
  String name;
  int grade;

  Student(this.name, this.grade);

  @override
  String toString() {
    return "Student('$name',$grade)'";
  }
}

List<Student> students = [
  Student('Alice', 85),
  Student('Bob', 92),
  Student('Charlie', 77),
  Student('Daisy', 90)
];
