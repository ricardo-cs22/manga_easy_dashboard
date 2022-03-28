import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dashboard_manga_easy/core/config/app_config.dart';
import 'package:get/get.dart';

class AppwriteAdmin extends GetxService {
  late Client client;
  late Account account;
  late Database database;
  late Users users;

  Future<AppwriteAdmin> inicia() async {
    client = Client();
    client
        .setEndpoint(AppConfig.ipserver) // Your Appwrite Endpoint
        .setProject(AppConfig.projectID) // Your project ID
        .setKey(AppConfig.keyAppwrite);

    account = Account(client);
    users = Users(client);
    database = Database(client);
    return this;
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }
}