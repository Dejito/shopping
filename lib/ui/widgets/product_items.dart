import 'package:credpal_shopping/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  final ProductModel product;
  final double height;

  const ProductGridItem({
    super.key,
    required this.product,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // fixed height for predictable layout
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 10),
              color: Colors.black.withOpacity(0.06),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Vendor logo / static badge
            Positioned(
              top: 12,
              left: 12,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Image.asset(
                  product.merchantLogo,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Product content
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 48, 12, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product image
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        product.productImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Product title
                  Text(
                    product.productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Price row
                  Row(
                    children: [
                      Text(
                        '₦${product.productPrice}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF274FED),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '₦${product.productSlashedPrice}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
