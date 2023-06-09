import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String id;
  final String name;
  final num averagePrice;
  final int quantity;
  String? photoUrl;
  String? photoKey;

  Item(
    this.id,
    this.name,
    this.averagePrice,
    this.quantity,
    this.photoUrl,
    this.photoKey,
  );

  factory Item.fromDocument(DocumentSnapshot document) {
    dynamic map = document.data();
    return Item.fromMap(map);
  }

  factory Item.fromMap(Map<String, dynamic> map) => Item(
        map['id'],
        map['name'],
        map['averagePrice'],
        map['quantity'],
        map['photoUrl'],
        map['photoKey'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'averagePrice': averagePrice,
      'quantity': quantity,
      'photoUrl': photoUrl,
      'photoKey': photoKey,
    };
  }
}
