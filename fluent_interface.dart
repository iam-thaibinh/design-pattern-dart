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
}

void main() {
  Person p = Person("Bin", 23);
  p.changeName("Bob").changeAge(22);
}
