import 'package:yepa/app/features/product/domain/product_models.dart';
import 'package:yepa/core/firestore_dao.dart';

class ProductRemoteDataSource {
  const ProductRemoteDataSource(this.firestoreDao);

  final FirestoreDao firestoreDao;

  Future<List<Product>> getProducts() async {
    try {
      final collection =
      await firestoreDao.getCollection(path: 'products');
      final eventList = <Product>[];
      for (var document in collection.docs) {
        eventList.add(document.toProduct());
      }
      return eventList;
    } catch (e) {
      throw Exception("Error products");
    }
  }

}