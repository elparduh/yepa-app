import 'package:get_it/get_it.dart';
import 'package:yepa/app/features/product/data/product_remote_datasource.dart';
import 'package:yepa/app/features/product/data/product_repository.dart';
import 'package:yepa/app/features/product/domain/get_product_usecase.dart';
import 'package:yepa/core/firestore_dao.dart';

final _locator = GetIt.instance;

void registerProductDependencies() {
  _locator.registerLazySingleton<ProductRemoteDataSource>(
          () => ProductRemoteDataSource(_locator<FirestoreDao>()));

  _locator.registerLazySingleton<ProductRepository>(
          () => ProductRepository(_locator<ProductRemoteDataSource>()));

  _locator.registerFactory<GetProductUseCase>(
          () => GetProductUseCase(_locator<ProductRepository>()));
  ;
}
