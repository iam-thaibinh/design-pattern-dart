class Employee {
  final int id;
  final String name;

  const Employee(this.id, this.name);
}

void main() {
  const emp1 = Employee(1, 'Jon');
  var emp2 = const Employee(1, 'Jon');
  final emp3 = const Employee(1, 'Jon');

  print(emp1 == emp2);
  print(emp2 == emp3);
}
