class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.initialize() {
    return Person('', 0);
  }

  factory Person.withName(String name) {
    return Person(name, 0);
  }

  factory Person.withAge(int age) {
    final input = age > 0 ? age : 0;
    return Person('', input);
  }
}
