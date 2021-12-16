#import "FlutterFirstPlugin.h"

#import <AudioToolbox/AudioServices.h>

@implementation FlutterFirstPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_first_plugin"
            binaryMessenger:[registrar messenger]];
  FlutterFirstPlugin* instance = [[FlutterFirstPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if( [@"vibrate" isEqualToString:call.method] ){
    AudioServicesPlaySystemSound( 1519 );
    result( @"" );
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
