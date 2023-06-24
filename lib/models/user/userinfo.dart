class UserInformation {
  late String latitude;
  late CreatedDate? createdDate;
  late String photoURL;
  late String dateOfBirth;
  late String phoneNumber;
  late String displayName;
  late String address2;
  late CreatedDate? updatedDate;
  late bool active;
  late String occupation;
  late String address1;
  late String gender;
  late String longitude;

  UserInformation(
      {required this.latitude,
        required this.createdDate,
        required this.photoURL,
        required this.dateOfBirth,
        required this.phoneNumber,
        required this.displayName,
        required this.address2,
        required this.updatedDate,
        required this.active,
        required this.occupation,
        required this.address1,
        required this.gender,
        required this.longitude});

  UserInformation.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    address2 = json['address2'];
    createdDate = json['createdDate'] != null
        ? new CreatedDate.fromJson(json['createdDate'])
        : null;
    longitude = json['longitude'];
    active = json['active'];
    latitude = json['latitude'];
    occupation = json['occupation'];
    updatedDate = json['updatedDate'] != null
        ? new CreatedDate.fromJson(json['updatedDate'])
        : null;
    gender = json['gender'];
    dateOfBirth = json['dateOfBirth'];
    address1 = json['address1'];
    photoURL = json['photoURL'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['address2'] = this.address2;
    if (this.createdDate != null) {
      data['createdDate'] = this.createdDate!.toJson();
    }
    data['longitude'] = this.longitude;
    data['active'] = this.active;
    data['latitude'] = this.latitude;
    data['occupation'] = this.occupation;
    if (this.updatedDate != null) {
      data['updatedDate'] = this.updatedDate!.toJson();
    }
    data['gender'] = this.gender;
    data['dateOfBirth'] = this.dateOfBirth;
    data['address1'] = this.address1;
    data['photoURL'] = this.photoURL;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}

class CreatedDate {
  late int seconds;
  late int nanoseconds;

  CreatedDate({required this.seconds, required this.nanoseconds});

  CreatedDate.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    nanoseconds = json['nanoseconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seconds'] = this.seconds;
    data['nanoseconds'] = this.nanoseconds;
    return data;
  }
}