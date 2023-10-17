import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_first_plugin_method_channel.dart';

abstract class FlutterFirstPluginPlatform extends PlatformInterface {
  FlutterFirstPluginPlatform() : super(token: _token);
  static final Object _token = Object();
  static FlutterFirstPluginPlatform _instance = MethodChannelFlutterFirstPlugin();
  static FlutterFirstPluginPlatform get instance => _instance;
  static set instance(FlutterFirstPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future vibrate() {
    throw UnimplementedError('vibrate() has not been implemented.');
  }
}
