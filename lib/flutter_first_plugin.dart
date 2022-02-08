import 'dart:async';

import 'package:flutter/services.dart';

class FlutterFirstPlugin {
  static const MethodChannel _channel = MethodChannel('flutter_first_plugin');

  static Future vibrate() async {
    await _channel.invokeMethod( 'vibrate' );
  }
}
