import 'dart:io';
import 'package:flutter/foundation.dart';

class AdManager {
  static String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-8973176059477425~5691450770";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8973176059477425~9246077628";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      //for test use this AdUnit id:
      if (kDebugMode) {
        return "ca-app-pub-3940256099942544/6300978111";
      }
      return "ca-app-pub-8973176059477425/5260205934";
    } else if (Platform.isIOS) {
      return "ca-app-pub-8973176059477425/1860016972";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  /*static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "<YOUR_ANDROID_INTERSTITIAL_AD_UNIT_ID>";
    } else if (Platform.isIOS) {
      return "<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "<YOUR_ANDROID_REWARDED_AD_UNIT_ID>";
    } else if (Platform.isIOS) {
      return "<YOUR_IOS_REWARDED_AD_UNIT_ID>";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }*/
}
