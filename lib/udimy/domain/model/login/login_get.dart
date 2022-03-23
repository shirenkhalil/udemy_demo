class LoginGetModel {
  bool? success;
  List<Msg>? msg;

  LoginGetModel({this.success, this.msg});

  LoginGetModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['msg'] != null) {
      msg = <Msg>[];
      json['msg'].forEach((v) {
        msg!.add(new Msg.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.msg != null) {
      data['msg'] = this.msg!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Msg {
  User? user;

  Msg({this.user});

  Msg.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? email;
  String? name;
  String? password;
  String? token;
  String? img;
  String? phone;

  User(
      {this.email, this.name, this.password, this.token, this.img, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    password = json['password'];
    token = json['token'];
    img = json['img'];
    phone = json['phone'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    data['token'] = this.token;
    data['img'] = this.img;
    data['phone'] = this.phone;
    return data;
  }
}
