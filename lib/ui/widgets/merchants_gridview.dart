import 'package:credpal_shopping/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../data/merchants_list.dart';
import 'merchant_item.dart';

class MerchantsGridView extends StatelessWidget {
  const MerchantsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Row
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Featured Merchants",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1C1E),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: CustomTextWidget(text: "View all",
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),

        // Merchants Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10, // Reduced slightly to save vertical space
            crossAxisSpacing: 16,
            childAspectRatio:
                0.7, // Lowering this value actually makes the card TALLER
          ),
          itemCount: merchants.length,
          itemBuilder: (context, index) {
            return MerchantItem(merchant: merchants[index]);
          },
        ),
      ],
    );
  }
}
