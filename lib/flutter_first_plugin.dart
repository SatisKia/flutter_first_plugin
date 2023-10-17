import 'flutter_first_plugin_platform_interface.dart';

class FlutterFirstPlugin {
  Future vibrate() async {
    await FlutterFirstPluginPlatform.instance.vibrate();
  }
}
