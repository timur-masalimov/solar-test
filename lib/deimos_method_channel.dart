import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'deimos_platform_interface.dart';

/// An implementation of [DeimosPlatform] that uses method channels.
class MethodChannelDeimos extends DeimosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('deimos');

  @override
  Future<String?> landNow() async {
    final log = await methodChannel.invokeMethod('executeLanding');
    return log;
  }
}
