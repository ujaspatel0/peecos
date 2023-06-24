import 'package:peecos/models/distribution/distribution_data.dart';

class DistributionResponse {
  late final bool success;
  late final String message;
  late final DistributionData? data;

  DistributionResponse({required this.success, required this.message, required this.data});

  DistributionResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null
        ? new DistributionData.fromJson(json['data'])
        : null;
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
