

import 'package:credpal_shopping/ui/widgets/product_items.dart';
import 'package:flutter/cupertino.dart';

import '../../data/products_list.dart';

class ProductsGridview extends StatelessWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Fixed height for each ProductGridItem
    const itemHeight = 220.0;

    // Column width: slightly less than half screen to create peek
    final columnWidth = screenWidth * 0.48;

    return SizedBox(
      height: itemHeight * 2 + 12, // 2 items stacked + spacing
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: (products.length / 2).ceil(),
        itemBuilder: (context, columnIndex) {
          final topIndex = columnIndex * 2;
          final bottomIndex = topIndex + 1;

          return Container(
            width: columnWidth,
            margin: const EdgeInsets.only(right: 12), // spacing between columns
            child: Column(
              children: [
                if (topIndex < products.length)
                  ProductGridItem(
                    product: products[topIndex],
                    height: itemHeight,
                  ),
                const SizedBox(height: 12),
                if (bottomIndex < products.length)
                  ProductGridItem(
                    product: products[bottomIndex],
                    height: itemHeight,
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}


