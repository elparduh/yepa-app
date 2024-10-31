import 'package:equatable/equatable.dart';

class Products extends Equatable {
  const Products({
    required this.id,
    required this.name,
    required this.precio,
  });

  final String id;
  final String name;
  final double precio;

  @override
  List<Object?> get props => [id, name, precio];
}
