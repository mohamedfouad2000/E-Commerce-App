class UserModel {
  String? name;
  String? Uid;
  String? email;
  String? password;
  String? phone;
  UserModel(
      {required this.email,
      required this.name,
      required this.password,
      required this.phone,
      required this.Uid});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    Uid = json['Uid'];
  }

  Map<String, dynamic> TOMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'Uid': Uid,
    };
  }
}
