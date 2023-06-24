class UserData {
  late String uid;
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

  UserData(
      {required this.uid,
        required this.displayName,
        required this.phoneNumber,
        required this.gender,
        required this.dateOfBirth,
        required this.occupation,
        required this.address1,
        required this.address2,
        required this.photoURL,
        required this.latitude,
        required this.longitude});

  UserData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
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
    return data;
  }
}