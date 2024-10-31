import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product({
    required this.id,
    required this.name,
    required this.price,
  });

  final String id;
  final String name;
  final double price;

  @override
  List<Object?> get props => [id, name, price];
}

extension EventQueryDocumentSnapshotX
on QueryDocumentSnapshot<Map<String, dynamic>> {
  toProduct() => Product(
    id: id,
    name: this['name'],
    price: this['precio'].toDouble(),
  );
}
