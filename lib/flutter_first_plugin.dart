import 'package:flutter/services.dart';

class FlutterFirstPlugin {
  static const MethodChannel _channel = MethodChannel('flutter_first_plugin');

  static void vibrate(){
    _channel.invokeMethod( 'vibrate' );
  }
}
