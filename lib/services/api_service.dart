import 'dart:convert';

import 'package:peecos/models/auth/auth_response.dart';
import 'package:http/http.dart' as http;
import 'package:peecos/models/base/simple_response.dart';
import 'package:peecos/models/distributed/distributed_response.dart';
import 'package:peecos/models/distribution/distribution_data.dart';
import 'package:peecos/models/distribution/distribution_response.dart';
import 'package:peecos/models/home/home_coupon.dart';
import 'package:peecos/models/home/home_response.dart';
import 'package:peecos/models/home/receive_coupon_response.dart';
import 'package:peecos/models/mycoupons/mycoupon.dart';
import 'package:peecos/models/mycoupons/mycoupons_response.dart';
import 'package:peecos/models/phonenumber/phonenumber_response.dart';
import 'package:peecos/models/user/user_data.dart';
import 'package:peecos/models/user/userinfo_response.dart';
import 'package:peecos/models/user/newuserinfo_response.dart';
import 'package:peecos/models/user/userinfo_update_response.dart';
import 'package:peecos/models/user_icon/usericon_response.dart';

class ApiService {
  static const String CHECK_PHONE_NUMBER_URL =
      "https://peecos.herokuapp.com/api/v1/user/phonenumberexist";
  static const String LINE_AUTH_URL =
      "https://peecos.herokuapp.com/api/v1/user/verify-line-token";
  static const String USER_INFO_URL =
      "https://peecos.herokuapp.com/api/v1/user/info";
  static const String USER_NEW_URL =
      "https://peecos.herokuapp.com/api/v1/user/new";
  static const String USER_ICON_URL =
      "https://peecos.herokuapp.com/api/v1/user/icon";
  static const String USER_DELETE_URL =
      "https://peecos.herokuapp.com/api/v1/user/delete";
  static const String USER_UPDATE_URL =
      "https://peecos.herokuapp.com/api/v1/user/update";
  static const String HOME_COUPONS_URL =
      "https://peecos.herokuapp.com/api/v1/coupon/list";
  static const String HOME_SHOW_COUPON_URL =
      "https://peecos.herokuapp.com/api/v1/coupon/";
  static const String HOME_REPORT_COUPON_URL =
      "https://peecos.herokuapp.com/api/v1/coupon/report";
  static const String HOME_RECEIVE_COUPON_URL =
      "https://peecos.herokuapp.com/api/v1/coupon/receive";
  static const String MY_COUPONS_URL =
      "https://peecos.herokuapp.com/api/v1/mycoupon/list";
  static const String MY_COUPON_DETAIL_URL =
      "https://peecos.herokuapp.com/api/v1/mycoupon/";
  static const String MY_COUPON_DELETE_URL =
      "https://peecos.herokuapp.com/api/v1/mycoupon/delete";
  static const String MY_PAGE_OPINION_URL =
      "https://peecos.herokuapp.com/api/v1/opinion/send";
  static const String DISTRIBUTION_URL =
      "https://peecos.herokuapp.com/api/v1/distribution/list";
  static const String DISTRIBUTION_DELETE_URL =
      "https://peecos.herokuapp.com/api/v1/distribution/delete";
  static const String DISTRIBUTION_NEW_URL =
      "https://peecos.herokuapp.com/api/v1/distribution/register";
  static const String DISTRIBUTION_ACTIVE =
      "https://peecos.herokuapp.com/api/v1/distribution/active";

  /// line auth to get custom token
  Future<PhoneNumberResponse> checkPhoneNumber(String phone) async {
    var body = jsonEncode({"phone": "$phone"});
    var url = Uri.parse(CHECK_PHONE_NUMBER_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json'
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final phoneResponse = PhoneNumberResponse.fromJson(body);
        return phoneResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  /// line auth to get custom token
  Future<AuthResponse> lineAuth(String userId, String token) async {
    var body = jsonEncode({"userId": "$userId", "token": "$token"});
    var url = Uri.parse(LINE_AUTH_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json'
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final authResponse = AuthResponse.fromJson(body);
        return authResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  /// get user info
  Future<UserInfoResponse> getUserInfo(String tokenID) async {
    var url = Uri.parse(USER_INFO_URL);
    return http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    }).then((http.Response response) {
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final userResponse = UserInfoResponse.fromJson(body);
        return userResponse;
      } else {
        return UserInfoResponse(userInfo: null);
      }
    });
  }

  /// post new user info
  Future<NewUserInfoResponse> newUserInfo(String tokenID, UserData userData) {
    var body = jsonEncode(userData);
    var url = Uri.parse(USER_NEW_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final iconResponse = NewUserInfoResponse.fromJson(body);
        return iconResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///update user
  Future<UserUpdateResponse> updateUserInfo(String tokenID, UserData userData) {
    var body = jsonEncode(userData);
    var url = Uri.parse(USER_UPDATE_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final userResponse = UserUpdateResponse.fromJson(body);
        return userResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///delete user
  Future<SimpleResponse> deleteUser(String tokenID, String uid, String reason) {
    var body = jsonEncode({"uid": "$uid", "reason": "$reason"});
    var url = Uri.parse(USER_DELETE_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final delResponse = SimpleResponse.fromJson(body);
        return delResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///register user icon
  Future<UserIconResponse> setUserIcon(
      String tokenID, String uid, String photoURL) {
    var url = Uri.parse(USER_ICON_URL);
    var body = jsonEncode({"uid": "$uid", "photoURL": "$photoURL"});
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final iconResponse = UserIconResponse.fromJson(body);
        return iconResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///get coupons for home
  Future<HomeResponse> getHomeCoupons(String tokenID) async {
    var url = Uri.parse(HOME_COUPONS_URL);
    return http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final homeResponse = HomeResponse.fromJson(body);
        return homeResponse;
      } else {
        return HomeResponse(data: [], total: 0);
      }
    });
  }

  ///get a coupon for home
  Future<HomeCoupon?> getHomeShowCoupon(String tokenID, String couponId) async {
    var url = Uri.parse(HOME_SHOW_COUPON_URL + couponId);
    final response = await http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    });

    print(response.body.toString());
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final homeResponse = HomeCoupon.fromJson(body);
      return homeResponse;
    } else {
      return null;
    }
  }

  /// receive a coupon
  Future<ReceiveCouponResponse> receiveCoupon(
      String tokenID, String uid, String couponId) {
    var url = Uri.parse(HOME_RECEIVE_COUPON_URL);
    var body = jsonEncode({"uid": "$uid", "couponId": "$couponId"});
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final receiveResponse = ReceiveCouponResponse.fromJson(body);
        return receiveResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  /// report a coupon
  Future<SimpleResponse> reportCoupon(String tokenID, String couponId) {
    var body = jsonEncode({"couponId": "$couponId"});
    var url = Uri.parse(HOME_REPORT_COUPON_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final reportResponse = SimpleResponse.fromJson(body);
        return reportResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///show mycoupon list
  Future<MyCouponsResponse> getMyCoupons(String tokenID) async {
    var url = Uri.parse(MY_COUPONS_URL);
    final response = await http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    });

    print(response.body.toString());
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final myCouponsResponse = MyCouponsResponse.fromJson(body);
      return myCouponsResponse;
    } else {
      return MyCouponsResponse(data: [], total: 0);
    }
  }

  ///get mycoupon detail
  Future<MyCouponDetail?> getMyCouponDetail(
      String tokenID,
      String couponId,
      ) async {
    var url = Uri.parse(MY_COUPON_DETAIL_URL + couponId);
    final response = await http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    });

    print(response.body.toString());
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final myCouponResponse = MyCouponDetail.fromJson(body);
      return myCouponResponse;
    } else {
      return null;
    }
  }

  /// delete my coupon
  Future<SimpleResponse> deleteMyCoupon(
      String tokenID, String uid, String couponId) {
    var url = Uri.parse(MY_COUPON_DELETE_URL);
    var body = jsonEncode({"uid": "$uid", "couponId": "$couponId"});
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final simpleResponse = SimpleResponse.fromJson(body);
        return simpleResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  /// send opinion
  Future<SimpleResponse> sendOpinion(String tokenID, String content) {
    var body = jsonEncode({"opinionContent": "$content"});
    var url = Uri.parse(MY_PAGE_OPINION_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final opinionResponse = SimpleResponse.fromJson(body);
        return opinionResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///get distributed list
  Future<DistributedResponse> getDistributedList(String tokenID) async {
    var url = Uri.parse(DISTRIBUTION_URL);
    final response = await http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    });

    print(response.body.toString());
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final distributedResponse = DistributedResponse.fromJson(body);
      return distributedResponse;
    } else {
      return DistributedResponse(data: [], total: 0);
    }
  }

  /// delete distributed
  Future<SimpleResponse> deleteDistributed(
      String tokenID, String uid, String couponId) {
    var url = Uri.parse(DISTRIBUTION_DELETE_URL);
    var body = jsonEncode({"uid": "$uid", "couponId": "$couponId"});
    print("body: $body");
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final simpleResponse = SimpleResponse.fromJson(body);
        return simpleResponse;
      } else {
        throw Exception("Unable to perform request.");
      }
    });
  }

  ///new distribution
  Future<DistributionResponse> newDistribution(
      String tokenID, DistributionData data) {
    var body = jsonEncode(data);
    var url = Uri.parse(DISTRIBUTION_NEW_URL);
    return http.post(url, body: body, headers: {
      "Cache-Control": "no-cache",
      'Content-type': 'application/json',
      "Authorization": "Bearer $tokenID"
    }).then((http.Response response) {
      print(response.body.toString());
      final body = jsonDecode(response.body);
      if (response.statusCode == 200) {
        final disResponse = DistributionResponse.fromJson(body);
        return disResponse;
      } else {
        throw Exception(body['error']);
      }
    });
  }

  ///get distributed active
  Future<DistributedResponse> getDistributedActive(String tokenID) async {
    var url = Uri.parse(DISTRIBUTION_ACTIVE);
    return http.get(url, headers: {
      "Cache-Control": "no-cache",
      "Content-type": "application/json",
      "Authorization": "Bearer $tokenID",
    }).then((http.Response response) {
      print(response.body.toString());
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        final distributedResponse = DistributedResponse.fromJson(body);
        return distributedResponse;
      } else {
        return DistributedResponse(data: [], total: 0);
      }
    });
  }

}