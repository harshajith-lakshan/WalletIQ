import 'package:get_it/get_it.dart';
import 'package:walletiq/core/services/local_database_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Initialize Hive
  await LocalDatabaseService.initializeHive();
  
  // Register services
  getIt.registerSingleton<LocalDatabaseService>(
    LocalDatabaseService(),
  );
}
