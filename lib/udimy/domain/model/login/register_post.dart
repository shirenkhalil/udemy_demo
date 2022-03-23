class RegisterPostModel{
  String? type;
  String? mode;
  String? email;
  String? password;
  String? token;
  String? phone;

  RegisterPostModel(
      {this.type,
        this.mode,
        this.email,
        this.password,
        this.token,
        this.phone});

  RegisterPostModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    mode = json['mode'];
    email = json['email'];
    password = json['password'];
    token = json['token'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['mode'] = this.mode;
    data['email'] = this.email;
    data['password'] = this.password;
    data['token'] = this.token;
    data['phone'] = this.phone;
    return data;
  }
}
