import 'osc_upper_body_tracking_platform_interface.dart';

class OscUpperBodyTracking {
  Future<String?> getPlatformVersion() {
    return OscUpperBodyTrackingPlatform.instance.getPlatformVersion();
  }
}
