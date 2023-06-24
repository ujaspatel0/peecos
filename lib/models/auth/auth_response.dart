import 'package:peecos/models/base/base_response.dart';

class AuthResponse extends BaseResponse {
  late final String firebaseToken;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firebaseToken'] = this.firebaseToken;
    return data;
  }

  AuthResponse.fromJson(Map<String, dynamic> json) {
    firebaseToken = json['firebaseToken'];
  }
}
