package net.satis.flutter_first_plugin;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

import android.content.Context;
import android.os.Vibrator;

public class FlutterFirstPlugin implements FlutterPlugin, MethodCallHandler {
  private MethodChannel channel;

  private Vibrator vibrator;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_first_plugin");
    channel.setMethodCallHandler(this);

    vibrator = (Vibrator)flutterPluginBinding.getApplicationContext().getSystemService( Context.VIBRATOR_SERVICE );
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    if( call.method.equals( "vibrate" ) ){
      vibrator.vibrate( 50 );
      result.success( "" );
    } else {
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
