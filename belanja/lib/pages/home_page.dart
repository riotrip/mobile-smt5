import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/footer.dart';
import '../widgets/app_bar_title.dart';
import '../widgets/page_header.dart';
import '../widgets/product_card.dart';
import '../data/item_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = ItemData.items;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: AppBarTitle(
          title: 'Shopping',
          icon: Icons.shopping_bag_outlined,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 8, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section
            PageHeader(title: 'Products', subtitle: 'Find what you need'),
            // Products grid
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ProductCard(
                    item: item,
                    onTap: () {
                      context.go('/item', extra: item);
                    },
                  );
                },
              ),
            ),
            // Footer section
            SizedBox(height: 20),
            Footer(),
          ],
        ),
      ),
    );
  }
}
