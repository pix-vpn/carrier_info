import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'carrier_info_method_channel.dart';
import 'model/carrier_data.dart';

abstract class CarrierInfoPlatform extends PlatformInterface {
  /// Constructs a CarrierInfoPlatform.
  CarrierInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static CarrierInfoPlatform _instance = MethodChannelCarrierInfo();

  /// The default instance of [CarrierInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelCarrierInfo].
  static CarrierInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CarrierInfoPlatform] when
  /// they register themselves.
  static set instance(CarrierInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> get allowsVOIP async {
    throw UnimplementedError('allowsVOIP() has not been implemented.');
  }

  Future<String?> get carrierName async {
    throw UnimplementedError('carrierName() has not been implemented.');
  }

  /// The ISO country code for the user’s cellular service provider.
  Future<String?> get isoCountryCode async {
    throw UnimplementedError('isoCountryCode() has not been implemented.');
  }

  /// The mobile country code (MCC) for the user’s cellular service provider.
  Future<String?> get mobileCountryCode async {
    throw UnimplementedError('mobileCountryCode() has not been implemented.');
  }

  /// The mobile network code (MNC) for the user’s cellular service provider.
  Future<String?> get mobileNetworkCode async {
    throw UnimplementedError('mobileNetworkCode() has not been implemented.');
  }

  /// The mobile network operator code for the user’s cellular service provider.
  Future<String?> get mobileNetworkOperator async {
    throw UnimplementedError(
        'mobileNetworkOperator() has not been implemented.');
  }

  /// The mobile network radioType: 5G, 4G ... 2G
  Future<String?> get radioType async {
    throw UnimplementedError('radioType() has not been implemented.');
  }

  /// The mobile network generation: LTE, HSDPA, e.t.c
  Future<String?> get networkGeneration async {
    throw UnimplementedError('networkGeneration() has not been implemented.');
  }

  /// The current cell id (cid)
  Future<int?> get cid async {
    throw UnimplementedError('cid() has not been implemented.');
  }

  /// The current local area code
  Future<int?> get lac async {
    throw UnimplementedError('lac() has not been implemented.');
  }

  /// Get all carrier data from device
  Future<CarrierData?> get all async {
    throw UnimplementedError('all() has not been implemented.');
  }
}
