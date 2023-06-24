class DistributionData {
  late final String uid;
  late final String startDate;
  late final String endDate;
  late final String expiryDate;
  late final Coordinates coordinates;
  late final String couponImage;
  late final String tagline;
  late final String rangeTime;
  late final TargetAge? targetAge;

  DistributionData(
      {required this.uid,
      required this.startDate,
      required this.endDate,
      required this.expiryDate,
      required this.coordinates,
      required this.couponImage,
      required this.tagline,
      required this.rangeTime,
      required this.targetAge});

  DistributionData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    expiryDate = json['expiryDate'];
    coordinates = (json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null)!;
    couponImage = json['couponImage'];
    tagline = json['tagline'];
    rangeTime = "";
    targetAge = json['targetAge'] != null
        ? new TargetAge.fromJson(json['targetAge'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['expiryDate'] = this.expiryDate;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates.toJson();
    }
    data['couponImage'] = this.couponImage;
    data['tagline'] = this.tagline;
    data['rangeTime'] = this.rangeTime;
    if (this.targetAge != null) {
      data['targetAge'] = this.targetAge!.toJson();
    }
    return data;
  }
}

class Coordinates {
  late final double latitude;
  late final double longitude;

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

class TargetAge {
  late final int min;
  late final int max;

  TargetAge({required this.min, required this.max});

  TargetAge.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    max = json['max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min'] = this.min;
    data['max'] = this.max;
    return data;
  }
}
