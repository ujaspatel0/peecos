import 'package:peecos/models/phonenumber/metadata.dart';
import 'package:peecos/models/phonenumber/providerdata.dart';

class PhoneNumberData {
  late String uid;
  late bool emailVerified;
  late String displayName;
  late String photoURL;
  late String phoneNumber;
  late bool disabled;
  late Metadata? metadata;
  late List<ProviderData> providerData;

  PhoneNumberData(
      {required this.uid,
        required this.emailVerified,
        required this.displayName,
        required this.photoURL,
        required this.phoneNumber,
        required this.disabled,
        required this.metadata,
        required this.providerData});

  PhoneNumberData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    emailVerified = json['emailVerified'];
    displayName = json['displayName'];
    photoURL = json['photoURL'];
    phoneNumber = json['phoneNumber'];
    disabled = json['disabled'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['providerData'] != null) {
      providerData = [];
      json['providerData'].forEach((v) {
        providerData.add(new ProviderData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['emailVerified'] = this.emailVerified;
    data['displayName'] = this.displayName;
    data['photoURL'] = this.photoURL;
    data['phoneNumber'] = this.phoneNumber;
    data['disabled'] = this.disabled;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.providerData != null) {
      data['providerData'] = this.providerData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}