

import 'package:credpal_shopping/ui/widgets/product_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/products_list.dart';

class ProductsGridview extends StatelessWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final columnWidth = screenWidth * 0.41;

    const double cardHeight = 180.0;
    const double verticalSpacing = 12.0;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: const BoxDecoration(
        color: Color(0xFFF1F3FC)
      ),
      height: (cardHeight * 2) + verticalSpacing * 5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: (products.length / 2).ceil(),
        itemBuilder: (context, columnIndex) {
          final topIndex = columnIndex * 2;
          final bottomIndex = topIndex + 1;

          return Container(
            width: columnWidth,
            margin: EdgeInsets.only(right: 20.w, bottom: 6.h),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: [
                if (topIndex < products.length)
                  SizedBox(
                    height: cardHeight,
                    child: ProductGridItem(product: products[topIndex]),
                  ),

                const SizedBox(height: verticalSpacing),

                if (bottomIndex < products.length)
                  SizedBox(
                    height: cardHeight,
                    child: ProductGridItem(product: products[bottomIndex]),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }}

