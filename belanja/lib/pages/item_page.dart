import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/footer.dart';
import '../widgets/item_image.dart';
import '../widgets/item_detail_card.dart';
import '../utils/price_formatter.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => context.go('/'),
        ),
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            ItemImage(item: item),

            SizedBox(height: 24),

            // Item name
            Text(
              item.name,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                letterSpacing: -1,
              ),
            ),

            SizedBox(height: 8),

            // Price
            Text(
              'Rp ${PriceFormatter.formatPrice(item.price)}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),

            SizedBox(height: 32),

            // Details grid
            Row(
              children: [
                // Rating
                Expanded(
                  child: ItemDetailCard(
                    value: item.rating.toString(),
                    label: 'Rating',
                    icon: Icons.star,
                  ),
                ),

                SizedBox(width: 16),

                // Stock
                Expanded(
                  child: ItemDetailCard(
                    value: item.stock.toString(),
                    label: 'Stock Available',
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Footer section
            Footer(),
          ],
        ),
      ),
    );
  }
}
