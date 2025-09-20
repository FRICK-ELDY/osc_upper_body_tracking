#ifndef FLUTTER_PLUGIN_OSC_UPPER_BODY_TRACKING_PLUGIN_H_
#define FLUTTER_PLUGIN_OSC_UPPER_BODY_TRACKING_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace osc_upper_body_tracking {

class OscUpperBodyTrackingPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OscUpperBodyTrackingPlugin();

  virtual ~OscUpperBodyTrackingPlugin();

  // Disallow copy and assign.
  OscUpperBodyTrackingPlugin(const OscUpperBodyTrackingPlugin&) = delete;
  OscUpperBodyTrackingPlugin& operator=(const OscUpperBodyTrackingPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace osc_upper_body_tracking

#endif  // FLUTTER_PLUGIN_OSC_UPPER_BODY_TRACKING_PLUGIN_H_
