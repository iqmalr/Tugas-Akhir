class Person {
  String name;
  String heart;
  Person(this.name, this.heart);
}

void main() {
  List<Person> people = [
    Person('Girls 1', 'not love you'),
    Person('Girls 2', 'not love you'),
    Person('Girls 3', 'not love you'),
  ];

  List<Person> selectedPeople =
      people.where((person) => person.heart == 'love me').toList();
  if (selectedPeople.isNotEmpty) {
    selectedPeople.forEach((person) {
      print('Name: ${person.name}');
    });
  } else {
    print("Error: Expected an identifier, but got ''Girls 1''.");
    print(
        "Try inserting an identifier before ''Girls 1''.Person('Girls 1', 'not love you'),");
    print('^^^^^^');
    print('No one loves you');
  }
}
