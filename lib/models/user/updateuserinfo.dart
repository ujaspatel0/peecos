class UpdateUserInfo {
  late String displayName;
  late Null phoneNumber;
  late String gender;
  late String dateOfBirth;
  late String occupation;
  late String address1;
  late String address2;
  late Null photoURL;
  late Null latitude;
  late Null longitude;
  late String createdDate;
  late Null updatedDate;
  late bool active;
  late String uid;

  UpdateUserInfo(
    {
      required this.displayName,
      this.phoneNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.occupation,
      required this.address1,
      required this.address2,
      this.photoURL,
      this.latitude,
      this.longitude,
      required this.createdDate,
      this.updatedDate,
      required this.active,
      required this.uid
    }
  );

  UpdateUserInfo.fromJson(Map<String, dynamic> json) {
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
    createdDate = json['createdDate'];
    updatedDate = json['updatedDate'];
    active = json['active'];
    uid = json['uid'];
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
    data['createdDate'] = this.createdDate;
    data['updatedDate'] = this.updatedDate;
    data['active'] = this.active;
    data['uid'] = this.uid;
    return data;
  }

}
