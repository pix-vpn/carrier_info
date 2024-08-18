import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'carrier_info_platform_interface.dart';
import 'model/carrier_data.dart';

/// An implementation of [CarrierInfoPlatform] that uses method channels.
class MethodChannelCarrierInfo extends CarrierInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('carrier_info');

  @override
  /// Indicates if the carrier allows VoIP calls to be made on its network.
  Future<bool> get allowsVOIP async => Platform.isAndroid
      ? true
      : await methodChannel.invokeMethod('allowsVOIP');

  /// The name of the user’s home cellular service provider.
  Future<String?> get carrierName async =>
      await methodChannel.invokeMethod('carrierName');

  /// The ISO country code for the user’s cellular service provider.
  Future<String?> get isoCountryCode async {
    return await methodChannel.invokeMethod('isoCountryCode');
  }

  /// The mobile country code (MCC) for the user’s cellular service provider.
  Future<String?> get mobileCountryCode async {
    return await methodChannel.invokeMethod('mobileCountryCode');
  }

  /// The mobile network code (MNC) for the user’s cellular service provider.
  Future<String?> get mobileNetworkCode async =>
      await methodChannel.invokeMethod('mobileNetworkCode');

  /// The mobile network operator code for the user’s cellular service provider.
  Future<String?> get mobileNetworkOperator async =>
      await methodChannel.invokeMethod('mobileNetworkOperator');

  /// The mobile network radioType: 5G, 4G ... 2G
  Future<String?> get radioType async =>
      await methodChannel.invokeMethod('radioType');

  /// The mobile network generation: LTE, HSDPA, e.t.c
  Future<String?> get networkGeneration async =>
      await methodChannel.invokeMethod('networkGeneration');

  /// The current cell id (cid)
  Future<int?> get cid async {
    if (!Platform.isAndroid) {
      return null;
    }
    var data = await methodChannel.invokeMethod('cellId');
    var hm = jsonDecode(data);
    return hm["cid"];
  }

  /// The current local area code
  Future<int?> get lac async {
    if (!Platform.isAndroid) {
      return null;
    }
    var data = await methodChannel.invokeMethod('cellId');
    var hm = jsonDecode(data);
    return hm["lac"];
  }

  /// Get all carrier data from device
  Future<CarrierData?> get all async => CarrierData(
      allowsVOIP: await allowsVOIP,
      carrierName: await carrierName,
      isoCountryCode: await isoCountryCode,
      mobileCountryCode: await mobileCountryCode,
      mobileNetworkCode: await mobileNetworkCode,
      mobileNetworkOperator: await mobileNetworkOperator,
      networkGeneration: await networkGeneration,
      radioType: await radioType,
      cid: await cid,
      lac: await lac);
}
