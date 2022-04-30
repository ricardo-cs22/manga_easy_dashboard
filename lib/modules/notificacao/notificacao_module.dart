import 'package:dashboard_manga_easy/core/interfaces/module_factory.dart';
import 'package:dashboard_manga_easy/main.dart';
import 'package:dashboard_manga_easy/modules/dashboard/controllers/MenuController.dart';
import 'package:dashboard_manga_easy/modules/dashboard/controllers/dashboard_controller.dart';

class NotificacaoModule extends IModuleFactory {
  void register() {
    //register controllers
    di.registerFactory(() => DashboardController(app: di()));
    di.registerFactory(() => MenuController());
  }
}