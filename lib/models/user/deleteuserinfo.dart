class DeleteUser {
  late String uid;
  late String reason;

  DeleteUser(
    {
      required this.uid,
      required this.reason
    }
  );

  DeleteUser.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['reason'] = this.reason;
    return data;
  }

}
