import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDao {
  final firestore = FirebaseFirestore.instance;

  Future<void> setDocumentInSubCollection(
      {required String parentName,
        required String childName,
        String? parentUniqueKey,
        String? childUniqueKey,
        required Map<String, dynamic> data}) async =>
      firestore
          .collection(parentName)
          .doc(parentUniqueKey)
          .collection(childName)
          .doc(childUniqueKey)
          .set(data);

  Future<QuerySnapshot<Map<String, dynamic>>> getCollection(
      {required String path, String? uniqueKey}) =>
      firestore.collection(path).get();

  Future<void> setDocument(
      {required String name,
        String? uniqueKey,
        required Map<String, dynamic> data}) async =>
      firestore.collection(name).doc(uniqueKey).set(data);

  Future<Map<String, dynamic>> getDocument(
      {required String name, required String uniqueKey}) async {
    final docRef = firestore.collection(name).doc(uniqueKey);
    final document = await docRef.get();
    return document.data() as Map<String, dynamic>;
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getDocumentSnapshot(
      {required String name, required String uniqueKey}) =>
      firestore.collection(name).doc(uniqueKey).get();

  updateDocument(
      {required String name,
        String? uniqueKey,
        required Map<String, dynamic> data}) =>
      firestore.collection(name).doc(uniqueKey).update(data);

  deleteDocument({required String collectionName, String? uniqueKey}) =>
      firestore.collection(collectionName).doc(uniqueKey).delete();
}