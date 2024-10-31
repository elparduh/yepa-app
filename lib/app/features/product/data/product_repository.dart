import 'package:yepa/app/features/product/data/product_remote_datasource.dart';
import 'package:yepa/app/features/product/domain/product_models.dart';

class ProductRepository {
  const ProductRepository(this._productRemoteDataSource);

  final ProductRemoteDataSource _productRemoteDataSource;

  Future<List<Product>> getProducts() =>
      _productRemoteDataSource.getProducts();
}