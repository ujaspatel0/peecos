class ReceiveCouponResponse {
  late bool success;
  late String message;
  late Data? data;

  ReceiveCouponResponse({required this.success, required this.message, this.data});

  ReceiveCouponResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  late String couponId;
  late String couponImage;
  late String startDate;
  late String endDate;
  late String expiryDate;
  late String tagline;
  late String takenBy;
  late String takenDate;

  Data(
      {required this.couponId,
        required this.couponImage,
        required this.startDate,
        required this.endDate,
        required this.expiryDate,
        required this.tagline,
        required this.takenBy,
        required this.takenDate});

  Data.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponImage = json['couponImage'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    expiryDate = json['expiryDate'];
    tagline = json['tagline'];
    takenBy = json['takenBy'];
    takenDate = json['takenDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponImage'] = this.couponImage;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['expiryDate'] = this.expiryDate;
    data['tagline'] = this.tagline;
    data['takenBy'] = this.takenBy;
    data['takenDate'] = this.takenDate;
    return data;
  }
}