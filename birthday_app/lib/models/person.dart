class Person {
  final String name;
  final String dateOfBirth;

  Person({required this.name, required this.dateOfBirth});

  DateTime getDateTimeOfBirth() {
    return DateTime.parse(dateOfBirth);
  }
}