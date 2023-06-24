class SimpleResponse {
  late final bool success;
  late final String message;

  SimpleResponse({required this.success, required this.message});

  SimpleResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = success;
    data['message'] = message;
    return data;
  }
}
