import 'carrier_info_platform_interface.dart';
import 'model/carrier_data.dart';

class CarrierInfo {
  static Future<bool> get allowsVOIP async {
    return CarrierInfoPlatform.instance.allowsVOIP;
  }

  static Future<String?> get carrierName async {
    return CarrierInfoPlatform.instance.carrierName;
  }

  /// The ISO country code for the user’s cellular service provider.
  static Future<String?> get isoCountryCode async {
    return CarrierInfoPlatform.instance.isoCountryCode;
  }

  /// The mobile country code (MCC) for the user’s cellular service provider.
  static Future<String?> get mobileCountryCode async {
    return CarrierInfoPlatform.instance.mobileCountryCode;
  }

  /// The mobile network code (MNC) for the user’s cellular service provider.
  static Future<String?> get mobileNetworkCode async {
    return CarrierInfoPlatform.instance.mobileNetworkCode;
  }

  /// The mobile network operator code for the user’s cellular service provider.
  static Future<String?> get mobileNetworkOperator async {
    return CarrierInfoPlatform.instance.mobileNetworkOperator;
  }

  /// The mobile network radioType: 5G, 4G ... 2G
  static Future<String?> get radioType async {
    return CarrierInfoPlatform.instance.radioType;
  }

  /// The mobile network generation: LTE, HSDPA, e.t.c
  static Future<String?> get networkGeneration async {
    return CarrierInfoPlatform.instance.networkGeneration;
  }

  /// The current cell id (cid)
  static Future<int?> get cid async {
    return CarrierInfoPlatform.instance.cid;
  }

  /// The current local area code
  static Future<int?> get lac async {
    return CarrierInfoPlatform.instance.lac;
  }

  /// Get all carrier data from device
  static Future<CarrierData?> get all async {
    return CarrierInfoPlatform.instance.all;
  }
}
