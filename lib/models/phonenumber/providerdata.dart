class ProviderData {
  late String uid;
  late String providerId;
  late String phoneNumber;

  ProviderData({required this.uid, required this.providerId, required this.phoneNumber});

  ProviderData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    providerId = json['providerId'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['providerId'] = this.providerId;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}