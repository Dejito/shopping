import 'package:credpal_shopping/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

import '../../data/merchants_list.dart';
import 'merchant_item.dart';

class MerchantsGridView extends StatelessWidget {

  const MerchantsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Featured Merchants",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1C1E),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const CustomTextWidget(text: "View all",
                    fontSize: 12,
                    color: Color(0xFF274FED),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 16,
              childAspectRatio:
                  0.7,
            ),
            itemCount: merchants.length,
            itemBuilder: (context, index) {
              return MerchantItem(merchant: merchants[index]);
            },
          ),
        ],
      ),
    );
  }
}
