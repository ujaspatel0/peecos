class MyCouponsResponse {
  late List<MyCoupon> data;
  late int total;

  MyCouponsResponse({required this.data, required this.total});

  MyCouponsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<MyCoupon>.empty(growable: true);
      json['data'].forEach((v) {
        data.add(new MyCoupon.fromJson(v));
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

class MyCoupon {
  late String couponId;
  late String couponImage;
  late String startDate;
  late String endDate;
  late String expiryDate;
  late String takenDate;
  late String tagline;
  late bool isActive;

  MyCoupon(
      {required this.couponId,
      required this.couponImage,
      required this.startDate,
      required this.endDate,
      required this.expiryDate,
      required this.takenDate,
      required this.tagline,
      required this.isActive});

  MyCoupon.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponImage = json['couponImage'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    expiryDate = json['expiryDate'];
    takenDate = json['takenDate'];
    tagline = json['tagline'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponImage'] = this.couponImage;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['expiryDate'] = this.expiryDate;
    data['takenDate'] = this.takenDate;
    data['tagline'] = this.tagline;
    data['isActive'] = this.isActive;
    return data;
  }
}
