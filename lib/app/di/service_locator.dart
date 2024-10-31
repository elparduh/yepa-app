import 'package:get_it/get_it.dart';
import 'package:yepa/app/features/product/di/product_service_locator.dart';
import 'package:yepa/core/di/core_service_locator.dart';

final locator = GetIt.instance;

void initializeLocator() {
  registerCoreDependencies();
  registerProductDependencies();
}
