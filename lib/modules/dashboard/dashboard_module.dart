import 'package:dashboard_manga_easy/core/interfaces/module_factory.dart';
import 'package:dashboard_manga_easy/main.dart';
import 'package:dashboard_manga_easy/modules/dashboard/presenter/controllers/dashboard_controller.dart';
import 'package:dashboard_manga_easy/modules/dashboard/presenter/controllers/detalhes_emblemas_controller.dart';

class DashboardModule extends IModuleFactory {
  @override
  void register() {
    //register controllers
    di.registerFactory(() => DetalhesEmblemasController(appwriteAdmin: di()));
    di.registerFactory(
      () => DashboardController(
        serviceRoute: di(),
        emblemaUserRepository: di(),
        emblemasRepository: di(),
      ),
    );
  }
}
