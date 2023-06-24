import 'package:peecos/models/home/coordinates.dart';
import 'package:peecos/models/home/target_age.dart';

class HomeCoupon {
  late String createdDate;
  late bool active;
  late String startDate;
  late String ownerIcon;
  late String ownerName;
  late Coordinates? coordinates;
  late String tagline;
  late String expiryDate;
  late TargetAge? targetAge;
  late String createdBy;
  late String endDate;
  late int totalDistribution;
  late String couponImage;
  late String couponId;

  HomeCoupon(
      {required this.createdDate,
        required this.active,
        required this.startDate,
        required this.ownerIcon,
        required this.ownerName,
        required this.coordinates,
        required this.tagline,
        required this.expiryDate,
        required this.targetAge,
        required this.createdBy,
        required this.endDate,
        required this.totalDistribution,
        required this.couponImage,
        required this.couponId});

  HomeCoupon.fromJson(Map<String, dynamic> json) {
    createdDate = json['createdDate'];
    active = json['active'];
    startDate = json['startDate'];
    ownerIcon = json['ownerIcon'];
    ownerName = json['ownerName'] != null? json['ownerName'] : '...';
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    tagline = json['tagline'];
    expiryDate = json['expiryDate'];
    targetAge = json['targetAge'] != null
        ? new TargetAge.fromJson(json['targetAge'])
        : null;
    createdBy = json['createdBy'];
    endDate = json['endDate'];
    totalDistribution = json['totalDistribution'];
    couponImage = json['couponImage'];
    couponId = json['couponId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdDate'] = this.createdDate;
    data['active'] = this.active;
    data['startDate'] = this.startDate;
    data['ownerIcon'] = this.ownerIcon;
    data['ownerName'] = this.ownerName;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    data['tagline'] = this.tagline;
    data['expiryDate'] = this.expiryDate;
    if (this.targetAge != null) {
      data['targetAge'] = this.targetAge!.toJson();
    }
    data['createdBy'] = this.createdBy;
    data['endDate'] = this.endDate;
    data['totalDistribution'] = this.totalDistribution;
    data['couponImage'] = this.couponImage;
    data['couponId'] = this.couponId;
    return data;
  }
}