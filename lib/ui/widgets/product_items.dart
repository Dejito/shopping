import 'package:credpal_shopping/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductGridItem extends StatelessWidget {
  final ProductModel product;

  const ProductGridItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(0.04),
          ),
        ],
      ),
      child: Stack(
        children: [
// Inside your ProductGridItem Stack
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Wrap the image in Expanded to prevent vertical overflow
                Expanded(
                  child: Center(
                    child: Image.asset(
                      product.productImage,
                      fit: BoxFit.contain, // Changed from scaleDown to contain
                    ),
                  ),
                ),

                const SizedBox(height: 8), // Reduced from 16.h to save space

                // 2. Product Name
                Text(
                  product.productName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13, // Slightly smaller to ensure fit
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 4),

                // 3. Price Row
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        '₦${product.productPrice}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF274FED),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '₦${product.productSlashedPrice}',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // 2. Floating Badge Layer (Top Left)
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                  )
                ],
              ),
              padding: const EdgeInsets.all(6),
              child: Image.asset(product.merchantLogo, fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
