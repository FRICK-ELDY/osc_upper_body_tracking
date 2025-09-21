import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:osc_upper_body_tracking/osc_upper_body_tracking_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOscUpperBodyTracking platform =
      MethodChannelOscUpperBodyTracking();
  const MethodChannel channel = MethodChannel('osc_upper_body_tracking');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
