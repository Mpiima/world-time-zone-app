import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3530539160598521/8225576704';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3530539160598521/1886812336';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/3964253750';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3530539160598521/7848789290';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/7552160883';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedInterstitialAd {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3530539160598521/2569338614';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/6978759866';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String get nativeAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3530539160598521/4895322892';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/3986624511';
    }
    throw new UnsupportedError("Unsupported platform");
  }
}