
import 'deimos_platform_interface.dart';

class Deimos {
  Future<String?> landNow() {
    return DeimosPlatform.instance.landNow();
  }
}
