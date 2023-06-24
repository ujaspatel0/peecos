class UserUpdateResponse {
  late bool success;
  late String message;
  late Data? data;

  UserUpdateResponse({required this.success, required this.message, required this.data});

  UserUpdateResponse.fromJson(Map<String, dynamic> json) {
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
  late String displayName;
  late String phoneNumber;
  late String gender;
  late String dateOfBirth;
  late String occupation;
  late String address1;
  late String address2;
  late String photoURL;
  late String latitude;
  late String longitude;
  late String updatedDate;

  Data(
      {required this.displayName,
        required this.phoneNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.occupation,
        required this.address1,
        required this.address2,
        required this.photoURL,
        required this.latitude,
        required this.longitude,
        required this.updatedDate});

  Data.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    dateOfBirth = json['dateOfBirth'];
    occupation = json['occupation'];
    address1 = json['address1'];
    address2 = json['address2'];
    photoURL = json['photoURL'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    updatedDate = json['updatedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['phoneNumber'] = this.phoneNumber;
    data['gender'] = this.gender;
    data['dateOfBirth'] = this.dateOfBirth;
    data['occupation'] = this.occupation;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['photoURL'] = this.photoURL;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['updatedDate'] = this.updatedDate;
    return data;
  }
}