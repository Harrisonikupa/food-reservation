class User {
  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;
  String? email;
  User({
    this.id,
    this.title,
    this.lastName,
    this.firstName,
    this.email,
    this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        title: json['title'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        picture: json['picture']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['picture'] = this.picture;
    return data;
  }
}
