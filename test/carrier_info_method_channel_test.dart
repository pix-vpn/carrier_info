import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:carrier_info/carrier_info_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCarrierInfo platform = MethodChannelCarrierInfo();
  const MethodChannel channel = MethodChannel('carrier_info');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });
}
