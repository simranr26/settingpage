class Person {
  final String name;
  final String email;
  final String imageUrl;

  Person({
    required this.name,
    required this.email,
    required this.imageUrl,
  });
}

Person user = Person(
    name: 'John Doe', email: 'j.doe@gmail.com', imageUrl: 'assets/Image1.png');
