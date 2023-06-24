import 'package:peecos/models/phonenumber/phonenumber_data.dart';

class PhoneNumberResponse {
  late PhoneNumberData? data;
  late bool exist;

  PhoneNumberResponse({required this.data, required this.exist});

  PhoneNumberResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new PhoneNumberData.fromJson(json['data']) : null;
    exist = json['exist'] != null ? json['exist'] : false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}