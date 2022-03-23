
class LoginModel {
  bool? status;
  String? message;
  UserData ? data;


  LoginModel.fromJson( Map <String ,dynamic> json)
  {   status = json['status'];
      message = json['message'];
       data = json['data'] != null ?
       UserData.fromJson(json['data']) : null ;
  }
}

class UserData{
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? token;
  int? credit;
   // named constructor
UserData.fromJson( Map <String ,dynamic> json)
{   id = json['id'];
    email = json['email'];
    name = json['name'];
    token = json['token'];
    credit = json['credit'];
    image = json['image'];
    phone = json['phone'];
}

}