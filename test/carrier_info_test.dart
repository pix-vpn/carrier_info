import 'package:carrier_info/model/carrier_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:carrier_info/carrier_info.dart';
import 'package:carrier_info/carrier_info_platform_interface.dart';
import 'package:carrier_info/carrier_info_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCarrierInfoPlatform
    with MockPlatformInterfaceMixin
    implements CarrierInfoPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  // TODO: implement all
  Future<CarrierData?> get all => throw UnimplementedError();

  @override
  // TODO: implement allowsVOIP
  Future<bool> get allowsVOIP => throw UnimplementedError();

  @override
  // TODO: implement carrierName
  Future<String?> get carrierName => throw UnimplementedError();

  @override
  // TODO: implement cid
  Future<int?> get cid => throw UnimplementedError();

  @override
  // TODO: implement isoCountryCode
  Future<String?> get isoCountryCode => throw UnimplementedError();

  @override
  // TODO: implement lac
  Future<int?> get lac => throw UnimplementedError();

  @override
  // TODO: implement mobileCountryCode
  Future<String?> get mobileCountryCode => throw UnimplementedError();

  @override
  // TODO: implement mobileNetworkCode
  Future<String?> get mobileNetworkCode => throw UnimplementedError();

  @override
  // TODO: implement mobileNetworkOperator
  Future<String?> get mobileNetworkOperator => throw UnimplementedError();

  @override
  // TODO: implement networkGeneration
  Future<String?> get networkGeneration => throw UnimplementedError();

  @override
  // TODO: implement radioType
  Future<String?> get radioType => throw UnimplementedError();
}

void main() {
  final CarrierInfoPlatform initialPlatform = CarrierInfoPlatform.instance;

  test('$MethodChannelCarrierInfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCarrierInfo>());
  });
}
