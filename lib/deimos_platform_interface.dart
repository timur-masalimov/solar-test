import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'deimos_method_channel.dart';

abstract class DeimosPlatform extends PlatformInterface {
  /// Constructs a DeimosPlatform.
  DeimosPlatform() : super(token: _token);

  static final Object _token = Object();

  static DeimosPlatform _instance = MethodChannelDeimos();

  /// The default instance of [DeimosPlatform] to use.
  ///
  /// Defaults to [MethodChannelDeimos].
  static DeimosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeimosPlatform] when
  /// they register themselves.
  static set instance(DeimosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> landNow() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
