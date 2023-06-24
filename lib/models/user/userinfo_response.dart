import 'package:peecos/models/user/userinfo.dart';

class UserInfoResponse {
  late final UserInformation? userInfo;

  UserInfoResponse({required this.userInfo});

  static UserInfoResponse fromJson(Map<String, dynamic> json) {
    return UserInfoResponse(
        userInfo: json != null ? new UserInformation.fromJson(json) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userInfo != null) {
      data['user'] = this.userInfo!.toJson();
    }
    return data;
    // Q: What is the process here doing? I don't understand the meaning of MAP
    // データクラスからjson形式のデータを取得したい場合は、このメソッド/関数を使用します
  }
}
