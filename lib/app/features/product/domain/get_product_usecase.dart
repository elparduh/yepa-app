import 'package:yepa/app/features/product/data/product_repository.dart';
import 'package:yepa/app/features/product/domain/product_models.dart';

class GetProductUseCase {
  const GetProductUseCase(this._productRepository);

  final ProductRepository _productRepository;

  Future<List<Product>> getProducts() => _productRepository.getProducts();
}
