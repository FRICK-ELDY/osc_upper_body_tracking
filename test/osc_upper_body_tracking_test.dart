import 'package:flutter_test/flutter_test.dart';
import 'package:osc_upper_body_tracking/osc_upper_body_tracking.dart';
import 'package:osc_upper_body_tracking/osc_upper_body_tracking_platform_interface.dart';
import 'package:osc_upper_body_tracking/osc_upper_body_tracking_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOscUpperBodyTrackingPlatform
    with MockPlatformInterfaceMixin
    implements OscUpperBodyTrackingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OscUpperBodyTrackingPlatform initialPlatform = OscUpperBodyTrackingPlatform.instance;

  test('$MethodChannelOscUpperBodyTracking is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOscUpperBodyTracking>());
  });

  test('getPlatformVersion', () async {
    OscUpperBodyTracking oscUpperBodyTrackingPlugin = OscUpperBodyTracking();
    MockOscUpperBodyTrackingPlatform fakePlatform = MockOscUpperBodyTrackingPlatform();
    OscUpperBodyTrackingPlatform.instance = fakePlatform;

    expect(await oscUpperBodyTrackingPlugin.getPlatformVersion(), '42');
  });
}
