import 'package:get/get.dart';
import '../controller/authenticated_controller.dart';

/// Binding class for the AuthenticatedScreen.
/// This class ensures that the AuthenticatedController is created when the
/// AuthenticatedScreen is first loaded.
class AuthenticatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticatedController());
  }
}
