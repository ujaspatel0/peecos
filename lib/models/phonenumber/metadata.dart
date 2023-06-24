class Metadata {
  late String lastSignInTime;
  late String creationTime;

  Metadata({required this.lastSignInTime, required this.creationTime});

  Metadata.fromJson(Map<String, dynamic> json) {
    lastSignInTime = json['lastSignInTime'];
    creationTime = json['creationTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastSignInTime'] = this.lastSignInTime;
    data['creationTime'] = this.creationTime;
    return data;
  }
}