class User {
  late String userId;
  late String username;
  late String email;
  late String password;
  late String rePassword;


  User(
      {required this.userId,
        required this.username,
        required this.email,
        required this.password,
        required this.rePassword,
        });

  User.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    rePassword = json['rePassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    data['rePassword'] = this.rePassword;
    return data;
  }
}
