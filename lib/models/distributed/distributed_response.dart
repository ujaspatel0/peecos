class DistributedResponse {
  late final List<Distributed> data;
  late final int total;

  DistributedResponse({required this.data, required this.total});

  DistributedResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Distributed>.empty(growable: true);
      json['data'].forEach((v) {
        data.add(new Distributed.fromJson(v));
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

class Distributed {
  late final String couponId;
  late final String couponImage;
  late final String startDate;
  late final String endDate;
  late final int totalDistribution;
  late final bool isActive;

  Distributed(
      {required this.couponId,
      required this.couponImage,
      required this.startDate,
      required this.endDate,
      required this.totalDistribution,
      required this.isActive});

  Distributed.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponImage = json['couponImage'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    totalDistribution = json['totalDistribution'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponImage'] = this.couponImage;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['totalDistribution'] = this.totalDistribution;
    data['isActive'] = this.isActive;
    return data;
  }
}
