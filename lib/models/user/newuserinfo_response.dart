import 'package:peecos/models/user/newuserinfo.dart';

class NewUserInfoResponse {
  late bool success;
  late String message;
  late NewUserInfo? user;

  NewUserInfoResponse({required this.success, required this.message, required this.user});

  static NewUserInfoResponse fromJson(Map<String, dynamic> json){
    return NewUserInfoResponse(
      success: json != null ? json["success"] : false,
      message: json != null ? json["message"] : false,
      user: json != null ? new NewUserInfo.fromJson(json) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}
