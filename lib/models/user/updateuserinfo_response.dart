import 'package:peecos/models/user/updateuserinfo.dart';

class UpdateUserInfoResponse {
  late bool success;
  late String message;
  late UpdateUserInfo? user;

  UpdateUserInfoResponse({required this.success, required this.message, this.user});

  static UpdateUserInfoResponse fromJson(Map<String, dynamic> json){
    return UpdateUserInfoResponse(
      success: json != null ? json["success"] : false,
      message: json != null ? json["message"] : false,
      user: json != null ? new UpdateUserInfo.fromJson(json) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}
