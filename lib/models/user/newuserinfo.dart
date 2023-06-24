class NewUserInfo {
  late String phoneNumber;
  late String displayName;
  late String gender;
  late String dateOfBirth;
  late String occupation;
  late String address1;
  late String address2;
  late String uid;

  NewUserInfo(
    {
      required this.phoneNumber,
      required this.displayName,
      required this.gender,
      required this.dateOfBirth,
      required this.occupation,
      required this.address1,
      required this.address2,
      required this.uid
    }
  );

  NewUserInfo.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phoneNumber'];
    displayName = json['displayName'];
    gender = json['gender'];
    dateOfBirth = json['dateOfBirth'];
    occupation = json['occupation'];
    address1 = json['address1'];
    address2 = json['address2'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNumber'] = this.phoneNumber;
    data['displayName'] = this.displayName;
    data['gender'] = this.gender;
    data['dateOfBirth'] = this.dateOfBirth;
    data['occupation'] = this.occupation;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['uid'] = this.uid;
    return data;
  }

}
