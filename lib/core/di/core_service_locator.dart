import 'package:get_it/get_it.dart';
import 'package:yepa/core/firestore_dao.dart';

final _locator = GetIt.instance;

void registerCoreDependencies() {
  _locator.registerLazySingleton<FirestoreDao>(() => FirestoreDao());
}