class RegisterPostModel{

  String? email;
  String? name;
  String? password;
  String? token;
  String? phone;

  RegisterPostModel(
      {
        this.email,
        this.name,
        this.password,
        this.token,
        this.phone});

  RegisterPostModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    token = json['token'];
    phone = json['phone'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = 'user';
    data['mode'] = 'add';
    data['email'] = this.email;
    data['password'] = this.password;
    data['token'] = this.token;
    data['phone'] = this.phone;
    data['name'] = this.name;
    return data;
  }
}
