#include "include/osc_upper_body_tracking/osc_upper_body_tracking_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "osc_upper_body_tracking_plugin.h"

void OscUpperBodyTrackingPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  osc_upper_body_tracking::OscUpperBodyTrackingPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
