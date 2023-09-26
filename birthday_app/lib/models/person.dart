class Person {
  final String name;
  final DateTime dateOfBirth;

  Person({required this.name, required this.dateOfBirth});

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      dateOfBirth: DateTime.parse(map['dateOfBirth'] as String),
    );
  }
}
