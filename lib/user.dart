class User {
  final String name;
  final String email;
  final String phone;

  User({
    this.name,
    this.email,
    this.phone,
  });

  User.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.email = map['email'],
        this.phone = map['phone'];
}
