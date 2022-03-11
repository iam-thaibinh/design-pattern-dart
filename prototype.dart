class Person {
  String name;
  int age;

  Person({this.name, this.age});

  static Person DeepCopy(Person input) {
    return Person(
      name: input.name,
      age: input.age,
    );
  }
}
