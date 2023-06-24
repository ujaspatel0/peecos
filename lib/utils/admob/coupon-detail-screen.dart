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
      return "ca-app-pub-8973176059477425/2107733873";

    } else if (Platform.isIOS) {
      if (kDebugMode) {
        return "ca-app-pub-3940256099942544/2934735716";
      }
      return "ca-app-pub-8973176059477425/3065608233";

    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
