import 'package:flutter/cupertino.dart';

const keyId = 'id';
const keyPizzaName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImageUrl = 'imageUrl';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza.fromJson(Map<String, dynamic> json)
    // : id = json['id'],
    : id = int.tryParse(json[keyId].toString()) ?? 0,
      pizzaName = json[keyPizzaName] != null
          ? json[keyPizzaName].toString()
          : 'No name',
      description = json[keyDescription] != null
          ? json[keyDescription].toString()
          : '',
      price = double.tryParse(json[keyPrice].toString()) ?? 0,
      imageUrl = json[keyImageUrl] ?? '';

  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyPizzaName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImageUrl: imageUrl,
    };
  }
}
