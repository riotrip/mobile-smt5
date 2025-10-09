import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemImage extends StatelessWidget {
  final Item item;
  final double height;

  const ItemImage({Key? key, required this.item, this.height = 280})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'item_${item.name}',
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey[200]!, width: 1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            item.imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[100],
                child: Icon(
                  Icons.image_not_supported,
                  color: Colors.grey[400],
                  size: 60,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
