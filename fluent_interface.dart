class Person {
  String name;
  int age;

  Person({this.name, this.age});

  Person changeName(String newName) {
    name = newName;
    return this;
  }

  Person changeAge(int newAge) {
    age = newAge;
    return this;
  }

  // Person().changeName("Bob").changeAge(22)
}
