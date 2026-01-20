


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/merchant_model.dart';

class FeaturedMerchantsSection extends StatelessWidget {

  const FeaturedMerchantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Row
        Padding(
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
                child: const Text("View all"),
              ),
            ],
          ),
        ),

        // Merchants Grid
        GridView.builder(
          shrinkWrap: true, // Crucial since it's likely inside a ScrollView
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 4 items per row as seen in screenshot
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75, // Adjust for the text below circle
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

class MerchantItem extends StatelessWidget {
  final MerchantModel merchant;

  const MerchantItem({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Circular Logo with Online Indicator
        Stack(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: merchant.brandColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Image.asset(
                  merchant.brandLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // The Green Online Dot
            if (merchant.isOnline)
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    color: const Color(0xFF68D391), // Emerald green
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        // Merchant Name
        Text(
          merchant.brandName,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1A1C1E),
          ),
        ),
      ],
    );
  }
}