import 'package:appwrite/appwrite.dart';
import 'package:dashboard_manga_easy/core/config/app_config.dart';
import 'package:dashboard_manga_easy/core/interfaces/service.dart';

class AppwriteClient extends IService {
  late Client client;
  late Account account;
  late Database database;

  @override
  Future<void> initialise() async {
    client = Client();
    client
        .setEndpoint(AppConfig.ipserver) // Your Appwrite Endpoint
        .setProject(AppConfig.projectID); // Your project ID

    account = Account(client);
    database = Database(client);
  }
}
