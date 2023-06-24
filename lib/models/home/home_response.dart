import 'package:peecos/models/home/home_coupon.dart';

class HomeResponse {
  late List<HomeCoupon> data;
  late int total;

  HomeResponse({required this.data, required this.total});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = List<HomeCoupon>.empty(growable: true);
      json['data'].forEach((v) {
        data.add(new HomeCoupon.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}
