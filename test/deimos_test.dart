import 'package:flutter_test/flutter_test.dart';
import 'package:deimos/deimos.dart';
import 'package:deimos/deimos_platform_interface.dart';
import 'package:deimos/deimos_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeimosPlatform
    with MockPlatformInterfaceMixin
    implements DeimosPlatform {

  @override
  Future<String?> landNow() => Future.value('42');
}

void main() {
  final DeimosPlatform initialPlatform = DeimosPlatform.instance;

  test('$MethodChannelDeimos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeimos>());
  });

  test('getPlatformVersion', () async {
    Deimos deimosPlugin = Deimos();
    MockDeimosPlatform fakePlatform = MockDeimosPlatform();
    DeimosPlatform.instance = fakePlatform;

    expect(await deimosPlugin.landNow(), '42');
  });
}
