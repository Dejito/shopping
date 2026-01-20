import 'package:credpal_shopping/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {

  final ProductModel productModel;

  const ProductGridItem({
    super.key, required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 18,
            offset: const Offset(0, 8),
            color: Colors.black.withOpacity(0.06),
          ),
        ],
      ),
      child: Stack(
        children: [
          /// Vendor logo
          Positioned(
            top: 12,
            left: 12,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Image.asset(
                productModel.merchantLogo,
                height: 20,
              ),
            ),
          ),

            Positioned(
              top: 12,
              right: 12,
              child: _PayLaterBadge(percent: payPercent!),
            ),

          /// Content
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 48, 12, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Product image
                Expanded(
                  child: Center(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                /// Title
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                /// Price row
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF274FED),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      oldPrice,
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
    );
  }
}


class _PayLaterBadge extends StatelessWidget {
  final String imagePath;

  const _PayLaterBadge({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imagePath,
        height: 32, // tweak to match your design
        fit: BoxFit.contain,
      ),
    );
  }
}
