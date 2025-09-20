import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'osc_upper_body_tracking_platform_interface.dart';

/// An implementation of [OscUpperBodyTrackingPlatform] that uses method channels.
class MethodChannelOscUpperBodyTracking extends OscUpperBodyTrackingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('osc_upper_body_tracking');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
