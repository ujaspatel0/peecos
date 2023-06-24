import 'package:intl/intl.dart';

class MyCouponDetail {
  late TargetAge? targetAge;
  late String expiryDate;
  late String startDate;
  late Coordinates? coordinates;
  late int totalDistribution;
  late String couponImage;
  late String ownerIcon;
  late String tagline;
  late String createdBy;
  late bool isExpired;
  late String endDate;
  late String createdDate;

  MyCouponDetail(
      {required this.targetAge,
      required this.expiryDate,
      required this.startDate,
      required this.coordinates,
      required this.totalDistribution,
      required this.couponImage,
      required this.ownerIcon,
      required this.tagline,
      required this.createdBy,
      required this.isExpired,
      required this.endDate,
      required this.createdDate});

  MyCouponDetail.fromJson(Map<String, dynamic> json) {
    targetAge = json['targetAge'] != null
        ? new TargetAge.fromJson(json['targetAge'])
        : null;
    expiryDate = json['expiryDate'];
    startDate = json['startDate'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    totalDistribution = json['totalDistribution'];
    couponImage = json['couponImage'];
    ownerIcon = json['ownerIcon'];
    tagline = json['tagline'];
    createdBy = json['createdBy'];
    isExpired = json['isExpired'];
    endDate = json['endDate'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.targetAge != null) {
      data['targetAge'] = this.targetAge!.toJson();
    }
    data['expiryDate'] = this.expiryDate;
    data['startDate'] = this.startDate;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    data['totalDistribution'] = this.totalDistribution;
    data['couponImage'] = this.couponImage;
    data['ownerIcon'] = this.ownerIcon;
    data['tagline'] = this.tagline;
    data['createdBy'] = this.createdBy;
    data['isExpired'] = this.isExpired;
    data['endDate'] = this.endDate;
    data['createdDate'] = this.createdDate;
    return data;
  }

  String getDisplayExpiryDate() {
    return DateFormat('yyyy-MM-dd')
        .format(DateTime.parse(expiryDate).subtract(Duration(days: 1)));
  }
}

class TargetAge {
  late int max;
  late int min;

  TargetAge({required this.max, required this.min});

  TargetAge.fromJson(Map<String, dynamic> json) {
    max = json['max'];
    min = json['min'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['max'] = this.max;
    data['min'] = this.min;
    return data;
  }
}

class Coordinates {
  late double latitude;
  late double longitude;

  Coordinates({required this.latitude, required this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
