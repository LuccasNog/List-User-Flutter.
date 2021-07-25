class User {
  int _id;
  String _name;
  String _email;

  User({int id, String name, String email}) {
    this._id = id;
    this._name = name;
    this._email = email;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set email(String email) => _email = email;

//mapear o json
  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
  }
}
