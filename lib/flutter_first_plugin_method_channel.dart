import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_first_plugin_platform_interface.dart';

class MethodChannelFlutterFirstPlugin extends FlutterFirstPluginPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_first_plugin');

  @override
  Future vibrate() async {
    await methodChannel.invokeMethod( 'vibrate' );
  }
}
