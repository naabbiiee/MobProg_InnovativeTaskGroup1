class Person {
  final String leading;
  final String name;
  final String relationship;
  final String occupation;
  final String birthdate;
  int? age;

  Person({
    required this.leading,
    required this.name,
    required this.relationship,
    required this.occupation,
    required this.birthdate,
    this.age});
}
