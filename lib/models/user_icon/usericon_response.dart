class UserIconResponse {
  late bool success;
  late String message;

  UserIconResponse({required this.success, required this.message});

  static UserIconResponse fromJson(Map<String, dynamic> json) {
    return UserIconResponse(
        success: json != null ? json["success"] : false,
        message: json != null ? json["message"] : false);
  }
}
