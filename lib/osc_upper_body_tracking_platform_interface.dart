import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'osc_upper_body_tracking_method_channel.dart';

abstract class OscUpperBodyTrackingPlatform extends PlatformInterface {
  /// Constructs a OscUpperBodyTrackingPlatform.
  OscUpperBodyTrackingPlatform() : super(token: _token);

  static final Object _token = Object();

  static OscUpperBodyTrackingPlatform _instance = MethodChannelOscUpperBodyTracking();

  /// The default instance of [OscUpperBodyTrackingPlatform] to use.
  ///
  /// Defaults to [MethodChannelOscUpperBodyTracking].
  static OscUpperBodyTrackingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OscUpperBodyTrackingPlatform] when
  /// they register themselves.
  static set instance(OscUpperBodyTrackingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
